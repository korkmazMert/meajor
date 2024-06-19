import 'dart:convert';
import 'package:alisatiyor/gen/assets.gen.dart';
import 'package:alisatiyor/models/address/address_provider_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef OnCityChanged = void Function(String? newCity);
typedef OnDistrictChanged = void Function(String? newDistrict);

class AddressDropdown extends StatefulWidget {
  const AddressDropdown(
      {required this.formKey,
      super.key,
      this.selectedCity,
      this.selectedDistrict,
      this.onCityChanged,
      this.onDistrictChanged});
  final String? selectedCity;
  final String? selectedDistrict;
  final OnCityChanged? onCityChanged;
  final OnDistrictChanged? onDistrictChanged;
  final GlobalKey<FormState> formKey;
  @override
  AddressDropdownState createState() => AddressDropdownState();
}

class AddressDropdownState extends State<AddressDropdown> {
  String? _selectedCity;
  String? _selectedDistrict;
  List<Il> _citiesList = [];
  List<String> _cityNamesList = [];

  Future<void> _loadCities() async {
    await _getCities();
    _getCityNames();
  }

  Future<void> _getCities() async {
    final jsonString = await rootBundle.loadString(Assets.json.ilIlce);
    final jsonResponse = json.decode(jsonString);
    if (jsonResponse is List) {
      _citiesList = jsonResponse
          .map((x) => Il.fromJson(x as Map<String, dynamic>))
          .toList();
    }
  }

  void _getCityNames() {
    _cityNamesList = [];
    for (final element in _citiesList) {
      _cityNamesList.add(element.ilAdi);
    }
  }

  List<dynamic> get districtList {
    if (_selectedCity != null) {
      final il =
          _citiesList.firstWhere((element) => element.ilAdi == _selectedCity);
      return il.ilceler;
    }
    return [];
  }

  @override
  void didUpdateWidget(AddressDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Check if selectedCity has changed
    if (widget.selectedCity != oldWidget.selectedCity) {
      // selectedCity has changed, perform your logic here
      if (widget.selectedCity != null) {
        final lowerCasedList =
            _cityNamesList.map((e) => e.toLowerCase()).toList();
        if (lowerCasedList.contains(widget.selectedCity!.toLowerCase())) {
          _selectedCity = widget.selectedCity;
        }
      }
    }

    // Check if selectedDistrict has changed
    if (widget.selectedDistrict != oldWidget.selectedDistrict) {
      if (widget.selectedDistrict != null) {
        final lowerCasedList =
            districtList.map((e) => (e as Ilce).ilceAdi.toLowerCase()).toList();
        if (lowerCasedList.contains(widget.selectedDistrict!.toLowerCase())) {
          _selectedDistrict =
              '${widget.selectedCity}-${widget.selectedDistrict}';
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadCities(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Form(
            key: widget.formKey,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Şehir'),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder()),
                          isExpanded: true,
                          value: _selectedCity,
                          hint: const Text('Şehir seçiniz'),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedCity = newValue;
                              _selectedDistrict =
                                  null; // Reset district when city changes
                              widget.onCityChanged?.call(newValue);
                              widget.onDistrictChanged?.call(null);
                            });
                          },
                          validator: (String? value) =>
                              value == null || value.isEmpty
                                  ? 'Lütfen bir şehir seçiniz'
                                  : null,
                          items: _cityNamesList
                              .map((value) => DropdownMenuItem<String>(
                                  value: value, child: Text(value)))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('İlçe'),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder()),
                          isExpanded: true,
                          value: _selectedDistrict,
                          hint: const Text('İlçe seçiniz'),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedDistrict = newValue;
                              if (newValue != null) {
                                final parts = newValue.split('-');
                                if (parts.length > 1) {
                                  final afterDash = parts[1];
                                  widget.onDistrictChanged?.call(afterDash);
                                }
                              }
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir ilçe seçiniz';
                            }
                            return null;
                          },
                          items: districtList
                              .map<DropdownMenuItem<String>>((dynamic value) {
                            return DropdownMenuItem<String>(
                              value:
                                  '$_selectedCity-${(value as Ilce).ilceAdi}',
                              child: Text(value.ilceAdi),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
