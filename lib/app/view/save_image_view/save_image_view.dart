import 'dart:io';

import 'package:alisatiyor/app/routes/app_routes.dart';
import 'package:alisatiyor/app/view/cubit/image_cubit/image_cubit.dart';
import 'package:alisatiyor/app/view/save_image_view/address_dropdown.dart';
import 'package:alisatiyor/core/extensions/build_context_ext.dart';
import 'package:alisatiyor/core/extensions/on_double.dart';
import 'package:alisatiyor/core/padding/page_padding.dart';
import 'package:alisatiyor/core/widgets/alert_dialog/custom_alert_dialog.dart';
import 'package:alisatiyor/core/widgets/common/custom_elevated_button.dart';
import 'package:alisatiyor/core/widgets/form_field/custom_text_form_field.dart';
import 'package:alisatiyor/services/image/image_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SaveImageView extends StatelessWidget {
  SaveImageView({super.key});
  final ImageService imageService = ImageService.instance;
  final GlobalKey<FormState> sizeFormKey = GlobalKey<FormState>();

  final GlobalKey<FormState> fromWhereDropdownFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> toWhereDropdownFormKey = GlobalKey<FormState>();
  final TextEditingController fromWhereCityController = TextEditingController();
  final TextEditingController fromWhereDistrictController =
      TextEditingController();
  final TextEditingController toWhereCityController = TextEditingController();
  final TextEditingController toWhereDistrictController =
      TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController widthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Save Image')),
      body: BlocListener<ImageCubit, ImageState>(
        listener: (context, state) {
          if (state.state == ImageStates.loaded &&
              state.message == 'image saved successfully') {
            CustomAlertDialog.adaptiveDialog(
              context: context,
              confirmText: 'Ana Sayfaya Dön ',
              title: Text(
                'Kargo Ücretiniz: ',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              content: Text('\$ ${state.cargoCost!.totalCost!.toPrice} '),
              onConfirm: () {
                context.router.maybePop();
                context.router.replaceAll([HomeRoute()]);
              },
            );
          }
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              imageDetailWidget(),
              Padding(
                padding: const PagePadding.allLow(),
                child: Column(
                  children: [
                    Form(
                        key: sizeFormKey,
                        child: Column(
                          children: [
                            CustomTextFormField(
                              labelText: 'Yükseklik',
                              controller: heightController,
                              validator: (p0) => p0!.isEmpty
                                  ? 'Lütfen yükseklik giriniz'
                                  : null,
                            ),
                            const SizedBox(height: 5),
                            CustomTextFormField(
                              labelText: 'Genişlik',
                              controller: widthController,
                              validator: (p0) => p0!.isEmpty
                                  ? 'Lütfen genişlik giriniz'
                                  : null,
                            ),
                            const SizedBox(height: 5),
                          ],
                        )),
                    Row(children: [
                      Text(
                        'Nereden',
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ]),
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
                    Row(children: [
                      Text(
                        'Nereye',
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ]),
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
                          onPressed: () {
                            if (sizeFormKey.currentState!.validate() &&
                                fromWhereDropdownFormKey.currentState!
                                    .validate() &&
                                toWhereDropdownFormKey.currentState!
                                    .validate()) {
                              context.read<ImageCubit>().saveImageToDb(
                                  image: imageService.images.value.first,
                                  height: double.parse(heightController.text),
                                  width: double.parse(widthController.text),
                                  fromWhere:
                                      '${fromWhereDistrictController.text} , ${fromWhereCityController.text}',
                                  toWhere:
                                      '${toWhereDistrictController.text} , ${toWhereCityController.text}');
                            }
                          },
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
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
