part of 'image_cubit.dart';

enum ImageStates {
  initial,
  loading,
  loaded,
  error,
}

class ImageState extends Equatable {
  const ImageState({
    this.state = ImageStates.initial,
    this.result,
    this.message,
    this.userImages,
    this.cargoCost,
  });
  final ImageStates state;
  final String? result;
  final String? message;
  final UserImages? userImages;
  final GetCargoCost? cargoCost;

  ImageState copyWith({
    ImageStates? state,
    String? result,
    String? message,
    UserImages? userImages,
    GetCargoCost? cargoCost,
  }) {
    return ImageState(
      state: state ?? this.state,
      result: result ?? this.result,
      message: message ?? this.message,
      userImages: userImages ?? this.userImages,
      cargoCost: cargoCost ?? this.cargoCost,
    );
  }

  @override
  List<Object?> get props => [state, result, message, userImages, cargoCost];
}
