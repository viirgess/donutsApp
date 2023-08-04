part of 'navigation_menu_cubit.dart';

class NavigationMenuState extends Equatable {
  final int selectedItemIndex;

  const NavigationMenuState({required this.selectedItemIndex});

  @override
  List<Object?> get props => [selectedItemIndex];
}
