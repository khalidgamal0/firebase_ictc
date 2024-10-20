import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form.dart';
import '../../../layout/layout.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key});
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var passController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                    children: [
            Text(
              'Register',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'register now to communicate with friends',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.grey),
            ),
            const SizedBox(
              height: 35,
            ),
            DTextFormField(
              controller: nameController,
              labelText: 'Name',
              prefixIcon: Icons.person,
              keyboardType: TextInputType.name,
              validate: (value) {
                if (value.isEmpty) {
                  return ('Email must not empty');
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            DTextFormField(
              controller: emailController,
              labelText: 'Email Address',
              prefixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
              validate: (value) {
                if (value.isEmpty) {
                  return ('Email must not empty');
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            DTextFormField(
              controller: passController,
              labelText: 'Password',
              suffixIcon: Icons.visibility_off,
              suffixPressed: (){},
              obscureText: true,
              prefixIcon: Icons.lock_outline_sharp,
              keyboardType: TextInputType.name,
              validate: (value) {
                if (value.isEmpty) {
                  return ('Email must not empty');
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            DTextFormField(
              controller: phoneController,
              labelText: 'Phone',
              prefixIcon: Icons.phone,
              keyboardType: TextInputType.phone,
              validate: (value) {
                if (value.isEmpty) {
                  return ('Email must not empty');
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            DMaterialButton(
                width: double.infinity,
                text: 'register',
                function: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LayoutView() ,));

                  // if (formKey.currentState!.validate()) {
                  //   cubit.userRegister(
                  //     name: nameController.text,
                  //     phone: phoneController.text,
                  //     password: passController.text,
                  //     email: emailController.text,
                  //   );
                  // }
                }),
                    ],
                  ),
          )),
    );
  }
}
