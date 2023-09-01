import 'package:app/cubit/autho/auth_cubit.dart';
import 'package:app/cubit/login/login_page_cubit.dart';
import 'package:app/cubit/register/register_page_cubit.dart';
import 'package:app/menu/cubit/add_item_to_busket/add_item_to_busket_cubit.dart';
import 'package:app/storage/shared_preferences_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setup() {
  locator
    ..registerSingleton<SharedPreferencesService>(SharedPreferencesService())
    ..registerSingleton<RegisterPageCubit>(RegisterPageCubit())
    ..registerSingleton<AuthCubit>(AuthCubit())
    ..registerSingleton<LoginPageCubit>(LoginPageCubit())
    ..registerSingleton<AddItemToBusketCubit>(AddItemToBusketCubit());
}
