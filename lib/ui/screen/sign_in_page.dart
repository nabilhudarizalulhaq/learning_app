import 'package:flutter/material.dart';
import 'package:learning_mobile/shared/theme.dart';
import 'package:learning_mobile/ui/screen/widgets/bottons.dart';
import 'package:learning_mobile/ui/screen/widgets/form.dart';
import 'package:learning_mobile/ui/screen/widgets/form_password.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'assets/login.png',
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'Log in',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Login with social networks',
                  style: greyTextStyle.copyWith(fontSize: 14),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/ic_facebook.png'),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/ic_instagram.png'),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/ic_google+.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const CustomFormField(
                  title: 'Email',
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
                CustomTextButton(
                  title: 'Forgot Password?',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFilledButton(
                  title: 'Log in',
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextButton(
                  title: 'Sign up',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign_up');
                  },
                ),
                const SizedBox(
                  height: 64,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
