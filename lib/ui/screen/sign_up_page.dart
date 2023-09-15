import 'package:flutter/material.dart';
import 'package:learning_mobile/shared/theme.dart';
import 'package:learning_mobile/ui/screen/widgets/bottons.dart';
import 'package:learning_mobile/ui/screen/widgets/form.dart';
import 'package:learning_mobile/ui/screen/widgets/form_password.dart';
import 'package:learning_mobile/ui/screen/widgets/icon_appbar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        leading: const IconAppbar()
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Container(
            width: 340,
            height: 250,
            margin: const EdgeInsets.only(
              top: 52,
              bottom: 16,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/sign_up.png',
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'Sign up',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Create your account',
                  style: greyTextStyle.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                  title: 'Name',
                  isShowTitle: false,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                  title: 'E-mail',
                  isShowTitle: false,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomPasswordFormField(
                  title: 'Password',
                  isShowTitle: false,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFilledButton(
                  title: 'Sign Up',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextButton(
                  title: 'Log in',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


