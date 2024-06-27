import 'dart:developer';

import 'package:alisatiyor/models/account_info/account_info.dart';
import 'package:alisatiyor/services/local/hive_service.dart';
import 'package:alisatiyor/services/network/auth/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'general_cubit_state.dart';

class GeneralCubit extends Cubit<GeneralState> {
  GeneralCubit() : super(const GeneralState());
  AuthService authService = AuthService.instance;
  HiveService hiveService = HiveService.instance;
  Future<void> initHive() async {
    final isSignedin = await hiveService.getDataFromBox(
        BoxNames.isSignedin.name, BoxNames.isSignedin.name);
    log('is signed in: $isSignedin');
    if (isSignedin == true) {
      emit(state.copyWith(state: GeneralStates.signedin));
    }
  }

  Future<void> getUserInfo() async {
    final controlId = await authService.getControlId();
    log('controlId: $controlId');
    emit(state.copyWith(isSuperuser: controlId.isSuperuser));
  }

  void loading() {
    emit(state.copyWith(state: GeneralStates.loading));
  }

  Future<void> signin(String email, String password) async {
    loading();
    try {
      final authResult = await authService.signin(email, password);
      if (authResult.result == 'success') {
        emit(state.copyWith(
          state: GeneralStates.signedin,
          result: authResult.result,
          message: authResult.message,
        ));
        await hiveService.writeDataToBox(
            BoxNames.isSignedin.name, BoxNames.isSignedin.name, true);
        await getAccountInfo();
        await getUserInfo();
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
          state: GeneralStates.signedin,
          accountInfo: accountInfoResponse,
          message: accountInfoResponse.message,
          result: accountInfoResponse.result,
        ));
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

  Future<void> signout() async {
    loading();
    try {
      final signoutResult = await authService.signout();
      if (signoutResult.result == 'success') {
        emit(state.copyWith(
          state: GeneralStates.signedout,
          result: signoutResult.result,
          message: signoutResult.message,
        ));
        await hiveService.writeDataToBox(
            BoxNames.isSignedin.name, BoxNames.isSignedin.name, false);
        await getUserInfo();
      } else {
        emit(state.copyWith(
          state: GeneralStates.error,
          result: signoutResult.result,
          message: signoutResult.message,
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
