part of 'register_page_cubit.dart';

class RegisterPageState extends Equatable {
  final String name;
  final String email;
  final String password;
  final String phone;

  const RegisterPageState({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
  });

  const RegisterPageState.initial()
      : name = '',
        email = '',
        password = '',
        phone = '';

  @override
  List<Object> get props => [name, email, password, phone];
}

class RegisterPageDone extends RegisterPageState {
  RegisterPageDone({
    required String name,
    required String email,
    required String password,
    required String phone,
  }) : super(
          name: name,
          email: email,
          password: password,
          phone: phone,
        );
}

class RegisterPageBlock extends RegisterPageState {
  RegisterPageBlock({
    required String name,
    required String email,
    required String password,
    required String phone,
  }) : super(
          name: name,
          email: email,
          password: password,
          phone: phone,
        );
}
