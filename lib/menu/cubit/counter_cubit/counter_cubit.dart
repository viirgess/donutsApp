import 'package:app/model/items_menu.dart';
import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(cartItems: []));

  void incrementCounter() {
    final updatedCounter = state.counter + 1;
    emit(state.copyWith(counter: updatedCounter));
  }

  void decrementCounter() {
    if (state.counter > 0) {
      final updatedCounter = state.counter - 1;
      emit(state.copyWith(counter: updatedCounter));
    }
  }
}
