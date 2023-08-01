import 'package:app/cubit/register/user_data_cubit.dart';
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
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserDataCubit>(
      create: (context) => UserDataCubit(),
      child: BlocBuilder<UserDataCubit, UserDataState>(
        builder: (context, state) {
          return Scaffold(
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
                Text('Create account',
                    style: TextStyleApp.height18
                        .copyWith(color: ColorSourceApp.middleGrey)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 26),
                  child: Column(
                    children: [
                      FieldApp(
                        labelText: 'Name',
                        svgIconPath: 'images/profile.svg',
                        isPassword: false,
                        inputText: (name) =>
                            context.read<UserDataCubit>().inputUsername(name),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      FieldApp(
                        labelText: 'Password',
                        svgIconPath: 'images/password.svg',
                        isPassword: true,
                        inputText: (password) =>
                            context.read<UserDataCubit>().password(password),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      FieldApp(
                        labelText: 'Email',
                        svgIconPath: 'images/email.svg',
                        inputText: (email) =>
                            context.read<UserDataCubit>().email(email),
                        isPassword: false,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      FieldApp(
                        labelText: 'Phone',
                        svgIconPath: 'images/phone.svg',
                        isPassword: false,
                        inputText: (phone) =>
                            context.read<UserDataCubit>().phone(phone),
                      ),
                      const SizedBox(
                        height: 12,
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
                      const ButtonNext(),
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
                const SizedBox(
                  height: 30,
                ),
                const Spacer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
