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
}
