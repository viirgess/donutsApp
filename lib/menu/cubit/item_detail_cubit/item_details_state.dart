part of 'item_details_cubit.dart';

class ItemDetailsState {
  final double totalPrice;
  final List toppingsList;
  final List currentItem;

  const ItemDetailsState({
    required this.totalPrice,
    required this.toppingsList,
    required this.currentItem,
  });

  ItemDetailsState.initial()
      : totalPrice = 9.99,
        toppingsList = FakeDataMenu.fakeDataToppings,
        currentItem = [];

  @override
  List<Object> get props => [totalPrice, toppingsList, currentItem];
}
