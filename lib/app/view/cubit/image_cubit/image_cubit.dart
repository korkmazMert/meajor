import 'dart:developer';
import 'dart:io';

import 'package:alisatiyor/models/get_cargo_cost/get_cargo_cost.dart';
import 'package:alisatiyor/models/user_images/user_images.dart';
import 'package:alisatiyor/services/network/image/image_network_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'image_state.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit() : super(const ImageState());
  ImageNetworkService imageService = ImageNetworkService.instance;

  void loading() {
    emit(state.copyWith(state: ImageStates.loading));
  }

  Future<void> getUserImages() async {
    loading();
    try {
      final userImagesResponse = await imageService.getUserImages();
      log('userImagesResponse: $userImagesResponse');
      emit(state.copyWith(
        userImages: userImagesResponse,
        result: 'success',
        message: 'user images fetched successfully',
        state: ImageStates.loaded,
      ));
    } catch (e) {
      emit(state.copyWith(state: ImageStates.error));
    }
  }

  Future<GetCargoCost?> updateCargoCost({
    required String fromWhere,
    required String toWhere,
    required int imageId,
  }) async {
    loading();
    try {
      final updateCargoCostResponse = await imageService.updateCargoCost(
        fromWhere: fromWhere,
        toWhere: toWhere,
        imageId: imageId,
      );
      print('updateCargoCostResponse: $updateCargoCostResponse');

      if (state.userImages!.images != null) {
        final updatedImages = state.userImages!.images!
            .map((e) => e.id == imageId
                ? e.copyWith(
                    fromWhere: updateCargoCostResponse.image?.fromWhere,
                    toWhere: updateCargoCostResponse.image?.toWhere,
                    totalCost: updateCargoCostResponse.image?.totalCost,
                  )
                : e)
            .toList();
        emit(state.copyWith(
          userImages: state.userImages!.copyWith(images: updatedImages),
          result: 'success',
          message: 'cargo cost updated successfully',
          state: ImageStates.loaded,
        ));
      }
      return updateCargoCostResponse;
    } catch (e) {
      log('error in updateCargoCost: $e');
    }
    return null;
  }

  Future<void> saveImageToDb(
      {required File image,
      required double height,
      required double width,
      required double weight,
      required String fromWhere,
      required String toWhere}) async {
    print('fromWhere: $fromWhere');
    print('toWhere: $toWhere');
    loading();
    try {
      final saveImageResponse =
          await imageService.saveImage(image, isImageProcessed: true);
      log('saveImageResponse: $saveImageResponse');
      final getCargoCostResponse = await imageService.getCargoCost(
        imageId: saveImageResponse.image!.id!,
        height: height,
        width: width,
        weight: weight,
        fromWhere: fromWhere,
        toWhere: toWhere,
      );
      log('getCargoCostResponse: $getCargoCostResponse');

      if (getCargoCostResponse.result == 'success') {
        emit(state.copyWith(
          result: 'success',
          message: 'image saved successfully',
          state: ImageStates.loaded,
          cargoCost: getCargoCostResponse,
        ));
      } else {
        emit(state.copyWith(
          result: 'error',
          message: 'error in getting cargo cost',
          state: ImageStates.error,
        ));
      }
      await getUserImages();
    } catch (e) {
      emit(state.copyWith(state: ImageStates.error));
    }
  }
}
