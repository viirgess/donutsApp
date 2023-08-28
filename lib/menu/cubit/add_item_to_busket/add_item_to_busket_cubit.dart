import 'package:app/menu/fake_data/item_menu_fake_data.dart';
import 'package:app/model/card_check_item.dart';
import 'package:app/model/items_menu.dart';
import 'package:app/model/items_menu.dart';
import 'package:app/model/items_menu.dart';
import 'package:bloc/bloc.dart';

import '../../../model/items_menu.dart';

part 'add_item_to_busket_state.dart';

class AddItemToBusketCubit extends Cubit<AddItemToBusketState> {
  AddItemToBusketCubit() : super(const AddItemToBusketState(cartItems: []));

  void addToCart(ItemDescription item) {
    final updatedCart = [...state.cartItems, item];
    emit(AddItemToBusketState(cartItems: updatedCart));
  }

  void removeFromCart(ItemDescription item) {
    final updatedCart = [...state.cartItems]..remove(item);
    emit(AddItemToBusketState(cartItems: updatedCart));
  }
}
