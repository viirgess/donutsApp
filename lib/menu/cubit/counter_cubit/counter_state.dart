part of 'counter_cubit.dart';

class CounterState {
  final List<ItemDescription> cartItems;
  final int counter;

  const CounterState({required this.cartItems, this.counter = 1});

  CounterState copyWith({List<ItemDescription>? cartItems, int? counter}) {
    return CounterState(
      cartItems: cartItems ?? this.cartItems,
      counter: counter ?? this.counter,
    );
  }

  List<Object> get props => [cartItems, counter];
}
