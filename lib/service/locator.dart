import 'package:app/cubit/register/user_data_cubit.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerSingleton<UserDataCubit>(UserDataCubit());

// Alternatively you could write it if you don't like global variables
}
