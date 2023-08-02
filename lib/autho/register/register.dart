import 'package:app/cubit/register/register_page_cubit.dart';
import 'package:app/pages/first_screen_page.dart';
import 'package:app/pages/menu_page.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/text_style.dart';
import 'package:app/widgets/button_next.dart';
import 'package:app/widgets/field_app.dart';
import 'package:app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterPageCubit>(
      create: (context) => RegisterPageCubit(),
      child: BlocListener<RegisterPageCubit, RegisterPageState>(
        listener: (context, state) {
          if (state is RegisterPageDone) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MenuPage()),
            );
          } else if (state is RegisterPageBlock) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstScreenPage()),
            );
          }
        },
        child: BlocBuilder<RegisterPageCubit, RegisterPageState>(
          builder: (context, state) {
            return Scaffold(
              body: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  TextTitleDonuts(),
                  Text(
                    'DONUT WORRY BE HAPPY',
                    style: TextStyleApp.height16
                        .copyWith(color: ColorSourceApp.darkGrey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  SvgPicture.asset(
                    'images/donutTtile.svg',
                    height: 140,
                  ),
                  const Spacer(),
                  Text('Create account',
                      style: TextStyleApp.height18
                          .copyWith(color: ColorSourceApp.middleGrey)),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 30, left: 30, top: 10, bottom: 10),
                    child: Column(
                      children: [
                        FieldApp(
                          onChanged: (newName) => context
                              .read<RegisterPageCubit>()
                              .inputName(newName),
                          labelText: 'Name',
                          svgIconPath: 'images/profile.svg',
                          isPassword: false,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        FieldApp(
                          labelText: 'Password',
                          svgIconPath: 'images/password.svg',
                          isPassword: true,
                          onChanged: (newPassword) => context
                              .read<RegisterPageCubit>()
                              .inputPassword(newPassword),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        FieldApp(
                          labelText: 'Email',
                          svgIconPath: 'images/email.svg',
                          onChanged: (newEmail) => context
                              .read<RegisterPageCubit>()
                              .inputEmail(newEmail),
                          isPassword: false,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        FieldApp(
                          labelText: 'Phone',
                          svgIconPath: 'images/phone.svg',
                          isPassword: false,
                          onChanged: (newPhone) => context
                              .read<RegisterPageCubit>()
                              .inputPhone(newPhone),
                        ),
                      ],
                    ),
                  ),
                  //const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuPage(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Create',
                            style: TextStyleApp.height25
                                .copyWith(color: ColorSourceApp.middleGrey)),
                        const SizedBox(
                          width: 14,
                        ),
                        ButtonNext(
                          callBack: () =>
                              context.read<RegisterPageCubit>().register(),
                          isEnable: state.isValid,
                          status: state.buttonStatus,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        'Or create an account using social media',
                        style: TextStyleApp.height15Bold.copyWith(
                          color: ColorSourceApp.middleGrey,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset('images/facebook.svg'),
                          SvgPicture.asset('images/google.svg'),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
