import 'package:app/menu/fake_data/fake_data.dart';
import 'package:bloc/bloc.dart';

part 'item_details_state.dart';

class ItemDetailsCubit extends Cubit<ItemDetailsState> {
  ItemDetailsCubit() : super(ItemDetailsState.initial());

  void manageToppings(item) {
    List list = state.currentItem;
    double TotalPrice = state.totalPrice;
    if (list.contains(item)) {
      list.remove(item);
      TotalPrice -= item.toppingPrice;
    } else {
      list.add(item);
      TotalPrice += item.toppingPrice;
    }

    emit(ItemDetailsState(
      totalPrice: TotalPrice,
      toppingsList: state.toppingsList,
      currentItem: list,
    ));
  }
}
