import 'package:flutter/material.dart';
// import 'package:rekammedis/components/social_button.dart';
import 'package:rekammedis/utils/text.dart';
import 'package:rekammedis/utils/config.dart';
import 'package:rekammedis/components/regist_form.dart'; // Import the RegistForm

class RegistPage extends StatefulWidget {
  const RegistPage({super.key});
  @override
  State<RegistPage> createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
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
                AppText.enText['welcomeRegist_text']!,
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Config.spaceSmall,
              // Text(
              //   AppText.enText['regist_text']!,
              //   style: const TextStyle(
              //     fontSize: 16,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              Config.spaceSmall,
              const RegistForm(), // Use RegistForm instead of RegistPage
              Config.spaceSmall,

              // add social button sign up
              const Spacer(),
              Config.spaceSmall,
            ],
          ),
        ),
      ),
    );
  }
}
