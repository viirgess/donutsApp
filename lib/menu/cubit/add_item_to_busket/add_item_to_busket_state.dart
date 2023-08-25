part of 'add_item_to_busket_cubit.dart';

class AddItemToBusketState {
  final List<ItemDescription> items;
  final int selectedItemIndex;

  const AddItemToBusketState(
      {required this.items, required this.selectedItemIndex});

  List<Object> get props => [items, selectedItemIndex];
}
