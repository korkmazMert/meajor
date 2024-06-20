import 'dart:developer';
import 'dart:io';

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

  Future<void> saveImageToDb(
      {required File image,
      required int height,
      required int width,
      required String fromWhere,
      required String toWhere}) async {
    print('fromWhere: $fromWhere');
    print('toWhere: $toWhere');
    loading();
    try {
      final saveImageResponse = await imageService.saveImage(image);
      log('saveImageResponse: $saveImageResponse');
      final getCargoCostResponse = await imageService.getCargoCost(
        imageId: saveImageResponse.image!.id!,
        height: height,
        width: width,
        fromWhere: fromWhere,
        toWhere: toWhere,
      );
      log('getCargoCostResponse: $getCargoCostResponse');

      if (getCargoCostResponse.result == 'success') {
        emit(state.copyWith(
          result: 'success',
          message: 'image saved successfully',
          state: ImageStates.loaded,
        ));
      } else {
        emit(state.copyWith(
          result: 'error',
          message: 'error in getting cargo cost',
          state: ImageStates.error,
        ));
      }
    } catch (e) {
      emit(state.copyWith(state: ImageStates.error));
    }
  }
}
