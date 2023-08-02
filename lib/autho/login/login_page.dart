import 'package:app/autho/register/register.dart';
import 'package:app/cubit/login/login_page_cubit.dart';
import 'package:app/cubit/register/register_page_cubit.dart';
import 'package:app/pages/first_screen_page.dart';
import 'package:app/pages/menu_page.dart';
import 'package:app/widgets/field_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/color_source.dart';
import '../../utils/text_style.dart';
import '../../widgets/button_next.dart';
import '../../widgets/grid_first_page.dart';
import '../../widgets/text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginPageCubit>(
      create: (context) => LoginPageCubit(),
      child: BlocListener<LoginPageCubit, LoginPageState>(
        listener: (context, state) {
          if (state is UserPageIsLogin) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MenuPage()),
            );
          } else if (state is UserPageNotLogin) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstScreenPage()),
            );
          }
        },
        child: BlocBuilder<LoginPageCubit, LoginPageState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: ColorSourceApp.white,
              body: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  // const GridFirstPage(),
                  TextTitleDonuts(),
                  Text(
                    'DONUT WORRY BE HAPPY',
                    style: TextStyleApp.height16
                        .copyWith(color: ColorSourceApp.darkGrey),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    'images/donutTtile.svg',
                    height: 140,
                  ),
                  const Spacer(),
                  Text('Sign in to your account',
                      style: TextStyleApp.height18
                          .copyWith(color: ColorSourceApp.middleGrey)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 26),
                    child: Column(
                      children: [
                        FieldApp(
                          labelText: 'Email',
                          svgIconPath: 'images/email.svg',
                          onChanged: (newEmail) => context
                              .read<LoginPageCubit>()
                              .inputEmail(newEmail),
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
                              .read<LoginPageCubit>()
                              .inputPassword(newPassword),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Forgot your password?',
                    style: TextStyleApp.height15
                        .copyWith(color: ColorSourceApp.lightGrey),
                  ),
                  Spacer(),
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
                        Text('Sing in',
                            style: TextStyleApp.height25
                                .copyWith(color: ColorSourceApp.middleGrey)),
                        const SizedBox(
                          width: 14,
                        ),
                        ButtonNext(
                          callBack: () =>
                              context.read<LoginPageCubit>().login(),
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
                        'Don’t have an account?',
                        style: TextStyleApp.height18
                            .copyWith(color: ColorSourceApp.middleGrey),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Create',
                          style: TextStyleApp.height18
                              .copyWith(color: ColorSourceApp.middleGrey),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
