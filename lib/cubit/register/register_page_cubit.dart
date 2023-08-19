import 'package:app/storage/shared_preferences_service.dart';
import 'package:app/utils/fire_key.dart';
import 'package:app/autho/widgets/button_next.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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

  setName(String name) {
    emit(RegisterPageState(
      name: state.name,
      email: state.email,
      password: '',
      phone: '',
      buttonStatus: ButtonStatus.active,
    ));
  }

  void register() async {
    emit(RegisterPageState(
      name: state.name,
      email: state.email,
      password: state.password,
      phone: state.phone,
      buttonStatus: ButtonStatus.active,
    ));

    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: state.email,
        password: state.password,
      );

      final userRef = FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid);

      await userRef.set({
        'name': state.name,
        'email': state.email,
        'phone': state.phone,
        'password': state.password,
      });

      final uid = userCredential.user!.uid;
      _sharedPreferencesService.setPreference(FireKey.uid, uid);

      emit(RegisterPageDone(
        name: state.name,
        email: state.email,
        password: state.password,
        phone: state.phone,
        buttonStatus: ButtonStatus.active,
      ));
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
