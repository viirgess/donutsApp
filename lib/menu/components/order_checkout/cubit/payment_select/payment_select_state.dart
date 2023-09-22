part of 'payment_select_cubit.dart';

class PaymentSelectState extends Equatable {
  final bool isSelected;
  const PaymentSelectState(this.isSelected);

  @override
  List<Object> get props => [isSelected];
}
