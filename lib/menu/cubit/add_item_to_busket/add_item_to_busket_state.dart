part of 'add_item_to_busket_cubit.dart';

class AddItemToBusketState {
  final List<ItemDescription> items;

  const AddItemToBusketState({
    required this.items,
  });

  List<Object> get props => [items];

  static AddItemToBusketState initial() {
    return AddItemToBusketState(items: []);
  }
}
