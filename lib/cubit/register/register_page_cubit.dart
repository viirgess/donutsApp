import 'package:app/service/locator.dart';
import 'package:app/service/shared_preference.dart';
import 'package:app/utils/fire_key.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'register_page_state.dart';

RegisterPageCubit block = RegisterPageCubit();

class RegisterPageCubit extends Cubit<RegisterPageState> {
  RegisterPageCubit() : super(RegisterPageState.initial());

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  final SharedPreferencesService _sharedPreferencesService =
      locator<SharedPreferencesService>();

  void inputUsername(String username) {
    print(username);
    emit(RegisterPageState(
      name: username,
      password: state.password,
      email: state.email,
      phone: state.phone,
    ));
  }

  void email(String email) {
    print(email);
    emit(RegisterPageState(
        name: state.name,
        password: state.password,
        email: email,
        phone: state.phone));
  }

  void password(String password) {
    print(password);
    emit(RegisterPageState(
        name: state.name,
        password: password,
        email: state.email,
        phone: state.phone));
  }

  void phone(String phone) {
    print(phone);
    emit(RegisterPageState(
      name: state.name,
      password: state.password,
      email: state.email,
      phone: phone,
    ));
  }

  void register() async {
    emit(RegisterPageState(
        name: state.name,
        email: state.email,
        password: state.password,
        phone: state.phone));
    try {
      final uid = await firebaseAuth.createUserWithEmailAndPassword(
          email: state.email, password: state.password);
      print(['=========>, ${uid}']);
      _sharedPreferencesService.setPreference(FireKey.uid, uid.toString());
      emit(RegisterPageDone(
          name: state.name,
          email: state.email,
          password: state.password,
          phone: state.phone));
    } on FirebaseAuthException catch (e) {
      emit(RegisterPageBlock(
        name: state.name,
        email: state.email,
        password: state.password,
        phone: state.phone,
      ));
    }
  }
}
