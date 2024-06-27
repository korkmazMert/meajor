part of 'general_cubit_cubit.dart';

enum GeneralStates {
  initial,
  loading,
  signedin,
  signedout,
  error,
}

class GeneralState extends Equatable {
  const GeneralState({
    this.state = GeneralStates.initial,
    this.result,
    this.message,
    this.accountInfo,
    this.isSuperuser,
  });
  final GeneralStates state;
  final String? result;
  final String? message;
  final AccountInfo? accountInfo;
  final bool? isSuperuser;

  GeneralState copyWith({
    GeneralStates? state,
    String? result,
    String? message,
    AccountInfo? accountInfo,
    bool? isSuperuser,
  }) {
    return GeneralState(
      state: state ?? this.state,
      result: result ?? this.result,
      message: message ?? this.message,
      accountInfo: accountInfo ?? this.accountInfo,
      isSuperuser: isSuperuser ?? this.isSuperuser,
    );
  }

  @override
  List<Object?> get props => [state, result, message, accountInfo, isSuperuser];
}
