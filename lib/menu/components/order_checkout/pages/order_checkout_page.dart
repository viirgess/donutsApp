import 'package:app/menu/components/menu_card_items/widget/button_cart.dart';
import 'package:app/menu/components/order_checkout/cubit/payment_select/payment_select_cubit.dart';
import 'package:app/menu/components/order_checkout/widgets/google_map.dart';
import 'package:app/menu/components/order_checkout/widgets/payment_select.dart';
import 'package:app/service/locator.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<PaymentSelectCubit>(),
      child: Scaffold(
        body: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: Column(
            children: [
              Container(
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(
                        MediaQuery.of(context).size.width, 15.0),
                    bottomRight: Radius.elliptical(
                        MediaQuery.of(context).size.width, 90.0),
                  ),
                  color: ColorSourceApp.brightPink,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 40, left: 16),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new,
                          color: ColorSourceApp.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Please enter your address',
                  style: TextStyleApp.height20.copyWith(
                    fontWeight: FontWeight.w500,
                    color: ColorSourceApp.black,
                    fontSize: 20,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                    height: 190,
                    width: double.infinity,
                    child: GoogleMapWidget()),
              ),
              const Spacer(),
              BlocBuilder<PaymentSelectCubit, PaymentSelectState>(
                builder: (context, state) {
                  return PaymentSelectWidget(
                    paymentSelectCubit: context.read<PaymentSelectCubit>(),
                  );
                },
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'Did you change your phone?',
                  style: TextStyleApp.height20.copyWith(
                    fontWeight: FontWeight.w100,
                    color: ColorSourceApp.black,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(
                        MediaQuery.of(context).size.width, 180.0),
                    topRight: Radius.elliptical(
                        MediaQuery.of(context).size.width, 50.0),
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                  color: ColorSourceApp.lightPurple,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 55, vertical: 45),
                  child: ButtonCart(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
