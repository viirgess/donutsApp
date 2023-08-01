import 'package:app/cubit/auth/auth_cubit.dart';
import 'package:app/cubit/register/register_page_cubit.dart';
import 'package:app/service/shared_preference.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setup() {
  locator
    ..registerSingleton<SharedPreferencesService>(SharedPreferencesService())
    ..registerSingleton<RegisterPageCubit>(RegisterPageCubit())
    ..registerSingleton<AuthCubit>(AuthCubit());
}
