import 'package:app/components/fake_data/fake_data.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'item_details_state.dart';

class ItemDetailsCubit extends Cubit<ItemDetailsState> {
  ItemDetailsCubit() : super(ItemDetailsState.initial());

  void addToppings(double toppingsPrice) {
    emit(ItemDetailsState(
      totalPrice: state.totalPrice + toppingsPrice,
      toppinsList: state.toppinsList,
      currentItens: state.currentItens,
    ));
  }
}
