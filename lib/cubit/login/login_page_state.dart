part of 'login_page_cubit.dart';

class LoginPageState extends Equatable {
  final String email;
  final String password;
  final ButtonStatus buttonStatus;

  const LoginPageState({
    required this.email,
    required this.password,
    required this.buttonStatus,
  });

  const LoginPageState.initial()
      : email = '',
        password = '',
        buttonStatus = ButtonStatus.unActive;

  bool get isValid =>
      email.isNotEmpty &&
      password.isNotEmpty &&
      buttonStatus == ButtonStatus.active;

  @override
  List<Object?> get props => [email, password, buttonStatus];
}

class UserPageIsLogin extends LoginPageState {
  const UserPageIsLogin({
    required super.email,
    required super.password,
    required super.buttonStatus,
  });
}

class UserPageNotLogin extends LoginPageState {
  const UserPageNotLogin({
    required super.email,
    required super.password,
    required super.buttonStatus,
  });
}
