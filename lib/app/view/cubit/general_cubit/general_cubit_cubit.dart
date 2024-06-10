import 'package:alisatiyor/models/account_info/account_info.dart';
import 'package:alisatiyor/services/network/auth/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'general_cubit_state.dart';

class GeneralCubit extends Cubit<GeneralState> {
  GeneralCubit() : super(const GeneralState());
  AuthService authService = AuthService.instance;

  void loading() {
    emit(state.copyWith(state: GeneralStates.loading));
  }

  Future<void> signin(String email, String password) async {
    loading();
    try {
      final authResult = await authService.signin(email, password);
      if (authResult.result == 'success') {
        emit(state.copyWith(state: GeneralStates.signedin));
        await getAccountInfo();
      } else {
        emit(state.copyWith(
          state: GeneralStates.error,
          result: authResult.result,
          message: authResult.message,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        state: GeneralStates.error,
        result: 'error',
        message: e.toString(),
      ));
    }
  }

  Future<void> getAccountInfo() async {
    loading();
    try {
      final accountInfoResponse = await authService.getAccountInfo();
      if (accountInfoResponse.result == 'success') {
        emit(state.copyWith(
            state: GeneralStates.signedin, accountInfo: accountInfoResponse));
      } else {
        emit(state.copyWith(
          state: GeneralStates.error,
          result: accountInfoResponse.result,
          message: accountInfoResponse.message,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        state: GeneralStates.error,
        result: 'error',
        message: e.toString(),
      ));
    }
  }
}
