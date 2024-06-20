part of 'messages_cubit.dart';

enum MessagesStates {
  initial,
  loading,
  loaded,
  error,
}

class MessagesState extends Equatable {
  const MessagesState({
    this.state = MessagesStates.initial,
    this.result,
    this.message,
  });
  final MessagesStates state;
  final String? result;
  final String? message;

  MessagesState copyWith({
    MessagesStates? state,
    String? result,
    String? message,
  }) {
    return MessagesState(
      state: state ?? this.state,
      result: result ?? this.result,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [state, result, message];
}
