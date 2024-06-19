import 'dart:io';

import 'package:alisatiyor/app/view/save_image_view/address_dropdown.dart';
import 'package:alisatiyor/core/extensions/build_context_ext.dart';
import 'package:alisatiyor/core/padding/page_padding.dart';
import 'package:alisatiyor/core/widgets/common/custom_elevated_button.dart';
import 'package:alisatiyor/core/widgets/common/custom_text_button.dart';
import 'package:alisatiyor/core/widgets/form_field/custom_text_form_field.dart';
import 'package:alisatiyor/services/image/image_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SaveImageView extends StatelessWidget {
  SaveImageView({super.key});
  final ImageService imageService = ImageService.instance;
  final GlobalKey<FormState> fromWhereDropdownFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> toWhereDropdownFormKey = GlobalKey<FormState>();
  final TextEditingController fromWhereCityController = TextEditingController();
  final TextEditingController fromWhereDistrictController =
      TextEditingController();
  final TextEditingController toWhereCityController = TextEditingController();
  final TextEditingController toWhereDistrictController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Save Image')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            imageDetailWidget(),
            Padding(
              padding: const PagePadding.allLow(),
              child: Column(
                children: [
                  const CustomTextFormField(labelText: 'Yükseklik'),
                  const SizedBox(height: 5),
                  const CustomTextFormField(labelText: 'Genişlik'),
                  const SizedBox(height: 5),
                  const Row(children: [Text('Nereden')]),
                  const Divider(),
                  const SizedBox(height: 5),
                  AddressDropdown(
                    formKey: fromWhereDropdownFormKey,
                    selectedCity: fromWhereCityController.text.isEmpty
                        ? null
                        : fromWhereCityController.text,
                    selectedDistrict: fromWhereDistrictController.text.isEmpty
                        ? null
                        : fromWhereDistrictController.text,
                    onCityChanged: (newCity) {
                      if (newCity != null) {
                        fromWhereCityController.text = newCity;
                      }
                    },
                    onDistrictChanged: (newDistrict) {
                      if (newDistrict != null) {
                        fromWhereDistrictController.text = newDistrict;
                      }
                    },
                  ),
                  const SizedBox(height: 5),
                  const Row(children: [Text('Nereye')]),
                  const Divider(),
                  AddressDropdown(
                    formKey: toWhereDropdownFormKey,
                    selectedCity: toWhereCityController.text.isEmpty
                        ? null
                        : toWhereCityController.text,
                    selectedDistrict: toWhereDistrictController.text.isEmpty
                        ? null
                        : toWhereDistrictController.text,
                    onCityChanged: (newCity) {
                      if (newCity != null) {
                        toWhereCityController.text = newCity;
                      }
                    },
                    onDistrictChanged: (newDistrict) {
                      if (newDistrict != null) {
                        toWhereDistrictController.text = newDistrict;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomElevatedButton(
                        label: 'Fiyat Hesapla',
                        width: context.width * 0.3,
                        fontSize: 14,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding imageDetailWidget() {
    return Padding(
      padding: const PagePadding.allLow(),
      child: ValueListenableBuilder<List<File>>(
        valueListenable: imageService.images,
        builder: (context, value, child) {
          return InteractiveViewer(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: double.infinity,
                child: Image.file(
                  value[0],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
