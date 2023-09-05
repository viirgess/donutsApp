import 'package:app/storage/shared_preferences_service.dart';
import 'package:app/utils/fire_key.dart';
import 'package:app/autho/widgets/button_next.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'login_page_state.dart';

LoginPageCubit block = LoginPageCubit();

class LoginPageCubit extends Cubit<LoginPageState> {
  final FirebaseAuth firebaseAuth;
  final SharedPreferencesService _sharedPreferencesService;

  LoginPageCubit()
      : firebaseAuth = FirebaseAuth.instance,
        _sharedPreferencesService = SharedPreferencesService(),
        super(const LoginPageState.initial());

  inputEmail(String newEmail) {
    emit(
      LoginPageState(
        email: newEmail,
        password: state.password,
        buttonStatus: ButtonStatus.active,
      ),
    );
  }

  inputPassword(String newPassword) {
    emit(LoginPageState(
      email: state.email,
      password: newPassword,
      buttonStatus: ButtonStatus.active,
    ));
  }

  login() async {
    emit(LoginPageState(
        email: state.email,
        password: state.password,
        buttonStatus: ButtonStatus.loading));

    try {
      final uid = await firebaseAuth.signInWithEmailAndPassword(
          email: state.email, password: state.password);
      print(['=========>, ${uid}']);
      _sharedPreferencesService.setPreference(FireKey.uid, uid.toString());
      emit(UserPageIsLogin(
        email: state.email,
        password: state.password,
        buttonStatus: ButtonStatus.unActive,
      ));
    } on FirebaseAuthException catch (e) {
      emit(UserPageNotLogin(
        email: state.email,
        password: state.password,
        buttonStatus: ButtonStatus.unActive,
      ));
    }
  }
}
