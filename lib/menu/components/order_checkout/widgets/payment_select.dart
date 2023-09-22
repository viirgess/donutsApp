import 'package:app/menu/components/order_checkout/cubit/payment_select/payment_select_cubit.dart';
import 'package:app/service/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentSelectWidget extends StatelessWidget {
  final PaymentSelectCubit paymentSelectCubit;

  const PaymentSelectWidget({super.key, required this.paymentSelectCubit});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<PaymentSelectCubit>(),
      child: BlocBuilder<PaymentSelectCubit, PaymentSelectState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    paymentSelectCubit.selectPaymentMethod();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          state.isSelected
                              ? Icons.radio_button_on_sharp
                              : Icons.radio_button_off_sharp,
                          color: state.isSelected ? Colors.green : Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('CASH'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    paymentSelectCubit.selectPaymentMethod();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          state.isSelected
                              ? Icons.radio_button_on_sharp
                              : Icons.radio_button_off_sharp,
                          color: state.isSelected ? Colors.green : Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('APPLE PAY'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
