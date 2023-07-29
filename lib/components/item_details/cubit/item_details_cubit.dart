import 'package:app/components/fake_data/fake_data.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'item_details_state.dart';

class ItemDetailsCubit extends Cubit<ItemDetailsState> {
  ItemDetailsCubit() : super(ItemDetailsState.initial());

  void manageToppings(item) {
    List list = state.currentItems;
    double totalPrice = state.totalPrice;
    if (list.contains(item)) {
      list.remove(item);
      totalPrice -= item.toppingPrice;
    } else {
      list.add(item);
      totalPrice += item.toppingPrice;
    }

    emit(ItemDetailsState(
      totalPrice: totalPrice,
      toppinsList: state.toppinsList,
      currentItems: list,
    ));
  }
}
