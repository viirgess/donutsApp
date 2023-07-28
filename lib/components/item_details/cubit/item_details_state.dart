part of 'item_details_cubit.dart';

class ItemDetailsState extends Equatable {
  final double totalPrice;
  final List toppinsList;
  final List currentItens;
  const ItemDetailsState({
    required this.totalPrice,
    required this.toppinsList,
    required this.currentItens,
  });

  ItemDetailsState.initial()
      : totalPrice = 0,
        toppinsList = FakeData.fakeDataToppings,
        currentItens = [];
  @override
  List<Object> get props => [totalPrice, toppinsList, currentItens];
}
