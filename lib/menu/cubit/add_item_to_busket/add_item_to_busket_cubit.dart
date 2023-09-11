import 'package:app/menu/fake_data/item_menu_fake_data.dart';
import 'package:app/model/card_check_item.dart';
import 'package:app/model/items_menu.dart';
import 'package:app/model/items_menu.dart';
import 'package:app/model/items_menu.dart';
import 'package:bloc/bloc.dart';

import '../../../model/items_menu.dart';

part 'add_item_to_busket_state.dart';

class AddItemToBusketCubit extends Cubit<AddItemToBusketState> {
  AddItemToBusketCubit() : super(AddItemToBusketState.initial());

  void addToCart(ItemDescription item) {
    try {
      final updatedCart = Map<ItemDescription, int>.from(
          state.cartItems); // Provide type information
      final currentQuantity = updatedCart[item] ?? 0;
      updatedCart[item] = currentQuantity + 1;
      emit(AddItemToBusketState(cartItems: updatedCart));
      print('Item added to cart: ${item.title}');
    } catch (e, stackTrace) {
      print('Error adding item to cart: $e');
      print('Stack trace: $stackTrace');
    }
  }

  void removeFromCart(ItemDescription item) {
    final updatedCart = Map<ItemDescription, int>.from(
        state.cartItems); // Provide type information
    final currentQuantity = updatedCart[item] ?? 0;
    if (currentQuantity > 1) {
      updatedCart[item] = currentQuantity - 1;
    } else {
      updatedCart.remove(item);
    }
    emit(AddItemToBusketState(cartItems: updatedCart));
  }
}
