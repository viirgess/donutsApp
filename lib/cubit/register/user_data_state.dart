part of 'user_data_cubit.dart';

class UserDataState extends Equatable {
  final String name;
  final String email;
  final String password;
  final String phone;

  const UserDataState({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
  });

  const UserDataState.initial()
      : name = '',
        email = '',
        password = '',
        phone = '';

  @override
  List<Object> get props => [name, email, password, phone];
}
