part of 'register_page_cubit.dart';

class RegisterPageState extends Equatable {
  final String name;
  final String email;
  final String password;
  final String phone;
  final ButtonStatus buttonStatus;

  RegisterPageState({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.buttonStatus,
  });

  RegisterPageState.initial()
      : name = '',
        email = '',
        password = '',
        phone = '',
        buttonStatus = ButtonStatus.unActive;

  bool get isValid =>
      name.isNotEmpty &&
      email.isNotEmpty &&
      password.isNotEmpty &&
      phone.isNotEmpty &&
      buttonStatus == ButtonStatus.active;

  @override
  List<Object> get props => [name, email, password, phone, buttonStatus];
}

class RegisterPageDone extends RegisterPageState {
  RegisterPageDone({
    required String name,
    required String password,
    required String email,
    required String phone,
    required ButtonStatus buttonStatus,
  }) : super(
          name: name,
          password: password,
          email: email,
          phone: phone,
          buttonStatus: buttonStatus,
        );
}

class RegisterPageBlock extends RegisterPageState {
  RegisterPageBlock({
    required String name,
    required String password,
    required String email,
    required String phone,
    required ButtonStatus buttonStatus,
  }) : super(
          name: name,
          password: password,
          email: email,
          phone: phone,
          buttonStatus: buttonStatus,
        );
}
