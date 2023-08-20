import 'package:app/menu/components/menu_drawer/component/profile/widgets/footer_profile.dart';
import 'package:app/menu/components/menu_drawer/component/profile/widgets/list_text_form_fields.dart';
import 'package:app/utils/color_source.dart';
import 'package:app/utils/title.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: ColorSourceApp.black,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  const TextTitleDonuts(),
                  const Spacer(),
                ],
              ),
            ),
            const ListTextFormFieldsProfile(),
            const Spacer(),
            const FooterProfile(),
          ],
        ),
      ),
    );
  }
}
