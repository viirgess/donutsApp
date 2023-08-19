import 'package:app/model/card_check_item.dart';
import 'package:app/model/items_menu.dart';
import 'package:bloc/bloc.dart';

part 'add_item_to_busket_state.dart';

class AddItemToBusketCubit extends Cubit<AddItemToBusketState> {
  final List<ItemDescription> cartItems = [];

  AddItemToBusketCubit() : super(AddItemToBusketState.initial());

  void addToCart(ItemDescription item) {
    cartItems.add(item);
    emit(AddItemToBusketState(items: cartItems));
  }

  void removeFromCart(ItemDescription item) {
    cartItems.remove(item);
    emit(AddItemToBusketState(items: cartItems));
  }
}
