import 'package:alisatiyor/app/view/cubit/image_cubit/image_cubit.dart';
import 'package:alisatiyor/app/view/save_image_view/address_dropdown.dart';
import 'package:alisatiyor/core/extensions/build_context_ext.dart';
import 'package:alisatiyor/core/extensions/on_double.dart';
import 'package:alisatiyor/core/padding/page_padding.dart';
import 'package:alisatiyor/core/widgets/alert_dialog/custom_alert_dialog.dart';
import 'package:alisatiyor/models/user_images/user_images.dart';
import 'package:alisatiyor/services/network/network_manager.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ImageDetailView extends StatefulWidget {
  const ImageDetailView(
      {required this.imageUrl,
      required this.heroTag,
      required this.image,
      super.key});
  final String imageUrl;
  final String heroTag;
  final UserImage image;

  @override
  State<ImageDetailView> createState() => _ImageDetailViewState();
}

class _ImageDetailViewState extends State<ImageDetailView> {
  final GlobalKey<FormState> fromWhereDropdownFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> toWhereDropdownFormKey = GlobalKey<FormState>();
  final TextEditingController fromWhereCityController = TextEditingController();
  final TextEditingController fromWhereDistrictController =
      TextEditingController();
  final TextEditingController toWhereCityController = TextEditingController();
  final TextEditingController toWhereDistrictController =
      TextEditingController();
  UserImage? userImage;
  @override
  void initState() {
    super.initState();
    userImage = widget.image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const PagePadding.horizontalLow(),
        child: Column(
          children: [
            Hero(
              tag: widget.heroTag,
              child: Padding(
                padding: const PagePadding.verticalLow(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(
                    '$baseUrl${widget.imageUrl}',
                    fit: BoxFit.cover,
                    width: context.width,
                  ),
                ),
              ),
            ),
            if (userImage?.totalCost != null)
              Text('Kargo Tutarı: \$ ${userImage?.totalCost!.toPrice}'),
            if ((userImage?.toWhere != null) && (userImage?.fromWhere != null))
              Container(
                color: Colors.grey[200],
                padding: const PagePadding.allLow(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Nereden: ',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(userImage!.toWhere!),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Nereye: ',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(userImage!.fromWhere!)
                          ],
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          CustomAlertDialog.adaptiveDialog(
                              context: context,
                              title: const Text('Güncelle'),
                              onConfirm: () async {
                                if ((fromWhereDropdownFormKey.currentState!
                                        .validate()) &&
                                    (toWhereDropdownFormKey.currentState!
                                        .validate())) {
                                  if (context.mounted) {
                                    final updatedImage = await context
                                        .read<ImageCubit>()
                                        .updateCargoCost(
                                            fromWhere:
                                                '${fromWhereDistrictController.text} , ${fromWhereCityController.text}',
                                            toWhere:
                                                '${toWhereDistrictController.text} , ${toWhereCityController.text}',
                                            imageId: widget.image.id!);
                                    setState(() {
                                      userImage = widget.image.copyWith(
                                        fromWhere:
                                            updatedImage?.image?.fromWhere,
                                        toWhere: updatedImage?.image?.toWhere,
                                        totalCost:
                                            updatedImage?.image?.totalCost,
                                      );
                                    });
                                  }
                                  if (context.mounted) {
                                    await context.router.maybePop();
                                  }
                                }
                              },
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(children: [
                                    Text(
                                      'Nereden',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    )
                                  ]),
                                  const Divider(),
                                  const SizedBox(height: 5),
                                  AddressDropdown(
                                    formKey: fromWhereDropdownFormKey,
                                    selectedCity:
                                        fromWhereCityController.text.isEmpty
                                            ? null
                                            : fromWhereCityController.text,
                                    selectedDistrict:
                                        fromWhereDistrictController.text.isEmpty
                                            ? null
                                            : fromWhereDistrictController.text,
                                    onCityChanged: (newCity) {
                                      if (newCity != null) {
                                        fromWhereCityController.text = newCity;
                                      }
                                    },
                                    onDistrictChanged: (newDistrict) {
                                      if (newDistrict != null) {
                                        fromWhereDistrictController.text =
                                            newDistrict;
                                      }
                                    },
                                  ),
                                  const SizedBox(height: 5),
                                  Row(children: [
                                    Text(
                                      'Nereye',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    )
                                  ]),
                                  const Divider(),
                                  AddressDropdown(
                                    formKey: toWhereDropdownFormKey,
                                    selectedCity:
                                        toWhereCityController.text.isEmpty
                                            ? null
                                            : toWhereCityController.text,
                                    selectedDistrict:
                                        toWhereDistrictController.text.isEmpty
                                            ? null
                                            : toWhereDistrictController.text,
                                    onCityChanged: (newCity) {
                                      if (newCity != null) {
                                        toWhereCityController.text = newCity;
                                      }
                                    },
                                    onDistrictChanged: (newDistrict) {
                                      if (newDistrict != null) {
                                        toWhereDistrictController.text =
                                            newDistrict;
                                      }
                                    },
                                  ),
                                ],
                              ),
                              confirmText: 'Güncelle');
                        },
                        icon: Icon(Icons.edit))
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
