import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'payment_select_state.dart';

class PaymentSelectCubit extends Cubit<PaymentSelectState> {
  PaymentSelectCubit() : super(PaymentSelectState(false));

  void selectPaymentMethod() {
    emit(PaymentSelectState(true));
  }
}
