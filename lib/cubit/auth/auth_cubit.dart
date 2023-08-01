import 'package:app/service/locator.dart';
import 'package:app/service/shared_preference.dart';
import 'package:app/utils/fire_key.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final SharedPreferencesService _sharedPreferencesService =
      locator<SharedPreferencesService>();

  init() async {
    final uid = await _sharedPreferencesService.getPreference(FireKey.uid);

    if (uid != null) {
      emit(AuthLogin());
    } else {
      emit(AuthNotLogin());
    }
  }
}
