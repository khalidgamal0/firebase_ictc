import 'package:flutter/material.dart';

import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_form.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            label: 'Name',
            prefix: Icons.person,
            controller: nameController,
            type: TextInputType.name,
            validate: (value) {
              if (value!.isEmpty) {
                return 'please enter your name';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            label: 'Email Address',
            prefix: Icons.mail,
            controller: emailController,
            type: TextInputType.emailAddress,
            validate: (value) {
              if (value!.isEmpty) {
                return 'please enter your email address';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            label: 'Phone Number',
            prefix: Icons.phone,
            controller: phoneController,
            type: TextInputType.phone,
            validate: (value) {
              if (value!.isEmpty) {
                return 'please enter your phone';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 25,
          ),
          CustomButton(
            buttonName: 'LogOut'.toUpperCase(),
            onTap: () {
              // SharedPreference.removeData(key: 'uid').then((value) {
              //   navigateAndFinish(context, const LoginScreen());
              //   LayoutCubit.get(context).currentIndex = 0;
              // });
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
