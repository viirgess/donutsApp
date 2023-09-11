part of 'add_item_to_busket_cubit.dart';

class AddItemToBusketState {
  final Map<ItemDescription, int> cartItems;

  const AddItemToBusketState({
    required this.cartItems,
  });

  AddItemToBusketState.initial() : cartItems = {};

  List<Object> get props => [cartItems];
}
