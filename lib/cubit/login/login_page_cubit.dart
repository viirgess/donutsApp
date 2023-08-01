import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_page_state.dart';

LoginPageCubit block = LoginPageCubit();

class LoginPageCubit extends Cubit<LoginPageState> {
  LoginPageCubit() : super(const LoginPageState.initial());

  void email(String email) {
    print(email);
    emit(LoginPageState(
      password: state.password,
      email: email,
    ));
  }

  void password(String password) {
    print(password);
    emit(LoginPageState(
      password: password,
      email: state.email,
    ));
  }

  void login() {}
}
