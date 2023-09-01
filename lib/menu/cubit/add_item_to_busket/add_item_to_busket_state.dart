part of 'add_item_to_busket_cubit.dart';

class AddItemToBusketState {
  final List<ItemDescription> cartItems;

  const AddItemToBusketState({
    required this.cartItems,
  });

  AddItemToBusketState.initial()
      : cartItems = ItemMenuFakeData.FakeDataItemMenu;

  List<Object> get props => [cartItems];
}
