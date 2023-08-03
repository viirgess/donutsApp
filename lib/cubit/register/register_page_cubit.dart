import 'package:app/service/locator.dart';
import 'package:app/storage/shared_preferences_service.dart';
import 'package:app/utils/fire_key.dart';
import 'package:app/widgets/button_next.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'register_page_state.dart';

RegisterPageCubit block = RegisterPageCubit();

class RegisterPageCubit extends Cubit<RegisterPageState> {
  final FirebaseAuth firebaseAuth;
  final SharedPreferencesService _sharedPreferencesService;

  RegisterPageCubit()
      : firebaseAuth = FirebaseAuth.instance,
        _sharedPreferencesService = SharedPreferencesService(),
        super(RegisterPageState.initial());

  inputName(String newName) {
    emit(
      RegisterPageState(
          name: newName,
          email: state.email,
          password: state.password,
          phone: state.phone,
          buttonStatus: ButtonStatus.active),
    );
  }

  inputPassword(String newPassword) {
    emit(RegisterPageState(
      name: state.name,
      password: newPassword,
      email: state.email,
      phone: state.phone,
      buttonStatus: ButtonStatus.active,
    ));
  }

  inputEmail(String newEmail) {
    emit(RegisterPageState(
      name: state.name,
      password: state.password,
      email: newEmail,
      phone: state.phone,
      buttonStatus: ButtonStatus.active,
    ));
  }

  inputPhone(String newPhone) {
    emit(RegisterPageState(
      name: state.name,
      password: state.password,
      email: state.email,
      phone: newPhone,
      buttonStatus: ButtonStatus.active,
    ));
  }

  void register() async {
    emit(RegisterPageState(
        name: state.name,
        email: state.email,
        password: state.password,
        phone: state.phone,
        buttonStatus: ButtonStatus.active));
    try {
      final uid = await firebaseAuth.createUserWithEmailAndPassword(
          email: state.email, password: state.password);
      print(['=========>, ${uid}']);
      _sharedPreferencesService.setPreference(FireKey.uid, uid.toString());
      emit(RegisterPageDone(
          name: state.name,
          email: state.email,
          password: state.password,
          phone: state.phone,
          buttonStatus: ButtonStatus.active));
    } on FirebaseAuthException catch (e) {
      emit(RegisterPageBlock(
        name: state.name,
        email: state.email,
        password: state.password,
        phone: state.phone,
        buttonStatus: ButtonStatus.unActive,
      ));
    }
  }
}