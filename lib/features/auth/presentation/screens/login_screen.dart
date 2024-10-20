import 'package:book_app/features/auth/presentation/screens/register%20_SCREEN.dart';
import 'package:book_app/features/layout/cubit/layout_cubit.dart';
import 'package:book_app/features/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form.dart';
import '../../../../core/widgets/text_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
  builder: (context, state) {
    var cubit=LayoutCubit.get(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 200,),
                  Text(
                    'Login',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Colors.blue,
                        ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'login now to communicate with friends',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  DTextFormField(
                    controller: emailController,
                    labelText: 'Email Address',
                    prefixIcon: Icons.email_outlined,
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
                    labelText: 'enter password',
                    prefixIcon: Icons.lock_outline_sharp,
                    suffixIcon: cubit.suffixIcon,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: cubit.obscureText,
                    suffixPressed: cubit.changePassVisibility,
                    validate: (value) {
                      if (value.isEmpty) {
                        return ('pass is too short');
                      }
                      return null;
                    },
                    onSubmitted: (value) {
                      if (formKey.currentState!.validate()) {
                        //   cubit.userLogin(
                        //       email: emailController.text, password: passController.text);
                      }
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                 state is LoginLoading?CircularProgressIndicator(): DMaterialButton(
                      text: 'LOGIN',
                      width: double.infinity,
                      function: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => LayoutView(),
                        // ));

                        if (formKey.currentState!.validate()) {
                          cubit.userLogin(
                              email: emailController.text,
                              password: passController.text);
                        }
                      }),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      DTextButton(
                          function: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                            ));
                          },
                          text: 'register')
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  },
);
  }
}
