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
    this.openLiveSupport,
    this.messages = const [],
  });
  final MessagesStates state;
  final String? result;
  final String? message;
  final OpenLiveSupportModel? openLiveSupport;
  final List<MessageModel> messages;

  MessagesState copyWith({
    MessagesStates? state,
    String? result,
    String? message,
    OpenLiveSupportModel? openLiveSupport,
    List<MessageModel>? messages,
  }) {
    return MessagesState(
      state: state ?? this.state,
      result: result ?? this.result,
      message: message ?? this.message,
      openLiveSupport: openLiveSupport ?? this.openLiveSupport,
      messages: messages ?? this.messages,
    );
  }

  @override
  List<Object?> get props =>
      [state, result, message, openLiveSupport, messages];
}
