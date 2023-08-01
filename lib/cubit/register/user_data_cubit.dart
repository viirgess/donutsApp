import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_data_state.dart';

UserDataCubit block = UserDataCubit();

class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit() : super(UserDataState.initial());

  void inputUsername(String username) {
    print(username);
    emit(UserDataState(
      name: username,
      password: state.password,
      email: state.email,
      phone: state.phone,
    ));
  }

  void email(String email) {
    print(email);
    emit(UserDataState(
        name: state.name,
        password: state.password,
        email: email,
        phone: state.phone));
  }

  void password(String password) {
    print(password);
    emit(UserDataState(
        name: state.name,
        password: password,
        email: state.email,
        phone: state.phone));
  }

  void phone(String phone) {
    print(phone);
    emit(UserDataState(
      name: state.name,
      password: state.password,
      email: state.email,
      phone: phone,
    ));
  }

  void register() {}
}
