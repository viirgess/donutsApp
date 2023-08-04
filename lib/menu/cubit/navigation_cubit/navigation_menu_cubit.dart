import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_menu_state.dart';

class NavigationMenuCubit extends Cubit<NavigationMenuState> {
  NavigationMenuCubit()
      : super(const NavigationMenuState(selectedItemIndex: 0));

  void selectItem(int index) {
    emit(NavigationMenuState(selectedItemIndex: index));
  }
}
