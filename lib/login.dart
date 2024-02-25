// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helminal/constants.dart';
import 'package:helminal/main.dart';
import 'package:helminal/widgets/reusable_button.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController.text = 'teewhy@admin.com';
  }

  Future<UserCredential?> login(String email, password) async {
    try {
      final loggedInUser = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return loggedInUser;
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kWhiteColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            addVerticalSpacing(24),
            const Text(
              'Welcome Back',
              style: kTitleTextStyle,
            ),
            addVerticalSpacing(20),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _emailController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFieldFillColor,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: kGreenColor,
                            width: 3,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                            onTap: () async {},
                            child: const Icon(Icons.email)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: kGreenColor.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: 'Email',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 20.0),
                    ),
                  ),
                ),
                addVerticalSpacing(24),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _passwordController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textFieldFillColor,
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: kGreenColor,
                            width: 3,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                            onTap: () async {},
                            child: const Icon(Icons.lock)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: kGreenColor.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: 'Password',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                    ),
                  ),
                ),
                addVerticalSpacing(24),
                ReusableButton(const Text('SIGN IN'), () async {
                  final loggedInUser = await login(
                      _emailController.text, _passwordController.text);
                  if (loggedInUser != null) {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const MyHomePage(),
                            type: PageTransitionType.rightToLeft));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Invalid Credentials'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  }
                }, kGreenColor),
                addVerticalSpacing(20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
