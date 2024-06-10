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
  });
  final ImageStates state;
  final String? result;
  final String? message;
  final UserImages? userImages;

  ImageState copyWith({
    ImageStates? state,
    String? result,
    String? message,
    UserImages? userImages,
  }) {
    return ImageState(
      state: state ?? this.state,
      result: result ?? this.result,
      message: message ?? this.message,
      userImages: userImages ?? this.userImages,
    );
  }

  @override
  List<Object?> get props => [state, result, message, userImages];
}
