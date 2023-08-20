import 'package:app/menu/components/menu_drawer/component/profile/widgets/text_form_field_profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ListTextFormFieldsProfile extends StatelessWidget {
  const ListTextFormFieldsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final currentUser = FirebaseAuth.instance.currentUser;
    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser?.uid)
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator();
        }
        final userData = snapshot.data!.data();

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextFormFieldProfile(
                initialValue: userData?['name'] ?? '',
                prefixIcon: const Icon(Icons.person_outlined),
              ),
              TextFormFieldProfile(
                initialValue: userData?['email'] ?? '',
                prefixIcon: const Icon(Icons.email_outlined),
              ),
              TextFormFieldProfile(
                initialValue: userData?['phone'] ?? '',
                prefixIcon: const Icon(Icons.phone_iphone_outlined),
              ),
              const TextFormFieldProfile(
                enabled: false,
                initialValue: 'Change password',
                prefixIcon: Icon(Icons.lock_clock_outlined),
              ),
            ],
          ),
        );
      },
    );
  }
}
