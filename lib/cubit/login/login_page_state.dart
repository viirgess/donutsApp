part of 'login_page_cubit.dart';

class LoginPageState extends Equatable {
  final String email;
  final String password;

  const LoginPageState({
    required this.email,
    required this.password,
  });

  const LoginPageState.initial()
      : email = '',
        password = '';

  @override
  List<Object> get props => [
        email,
        password,
      ];
}
