part of 'add_item_to_busket_cubit.dart';

class AddItemToBusketState {
  final List<ItemDescription> cartItems;
  final int counter;

  const AddItemToBusketState({required this.cartItems, this.counter = 0});

  AddItemToBusketState copyWith(
      {List<ItemDescription>? cartItems, int? counter}) {
    return AddItemToBusketState(
      cartItems: cartItems ?? this.cartItems,
      counter: counter ?? this.counter,
    );
  }

  List<Object> get props => [cartItems, counter];
}
