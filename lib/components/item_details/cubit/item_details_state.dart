part of 'item_details_cubit.dart';

class ItemDetailsState {
  final double totalPrice;
  final List toppinsList;
  final List currentItems;

  const ItemDetailsState({
    required this.totalPrice,
    required this.toppinsList,
    required this.currentItems,
  });

  ItemDetailsState.initial()
      : totalPrice = 0,
        toppinsList = FakeData.fakeDataToppings,
        currentItems = [];

  @override
  List<Object> get props => [totalPrice, toppinsList, currentItems];
}
