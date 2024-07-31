import 'package:flutter/material.dart';
// import 'package:rekammedis/components/social_button.dart';
import 'package:rekammedis/utils/text.dart';
import 'package:rekammedis/components/button.dart';
import 'package:rekammedis/utils/config.dart';
import 'package:rekammedis/components/login_form.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});
  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isSignIn = true;

  @override
  Widget build(BuildContext context) {
    // build login text field
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                AppText.enText['welcome_text']!,
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Config.spaceSmall,
              // Text(
              //   AppText.enText['signIn_text']!,
              //   style: const TextStyle(
              //     fontSize: 16,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              Config.spaceSmall,
              const LoginForm(),
              Config.spaceSmall,
              // Center(
              //   child: TextButton(
              //     onPressed: () {},
              //     child: Text(
              //       AppText.enText['forgot-password']!,
              //       style: const TextStyle(
              //         fontSize: 16,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.black,
              //       ),
              //     ),
              //   ),
              // ),
              // add social button sign in
              const Spacer(),
              // Center(
              //   child: Text(
              //     isSignIn
              //       ? AppText.enText['signUp_text']!
              //       : AppText.enText['']!,
              //     style: const TextStyle(
              //       fontSize: 16,
              //       fontWeight: FontWeight.normal,
              //       color: Colors.grey,
              //     ),
              //   ),
              // ),
              Config.spaceSmall,
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: const <Widget>[
              //     SocialButton(social: 'google'),
              //     SocialButton(social: 'facebook'),
              //   ],
              // ),
              Config.spaceSmall,
              Button(
                width: double.infinity,
                title: 'Belum Mempunyai Akun ? ',
                onPressed: () {
                  // manually sign in
                  Navigator.of(context).pushNamed('regist_page');
                },
                disable: false,
              ),
            ]),
      ),
    ));
  }
}
