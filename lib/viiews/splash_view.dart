// ignore_for_file: unnecessary_import

import 'package:bookstore/constants/colors_constants.dart';
import 'package:bookstore/viiews/login_view.dart';
import 'package:bookstore/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LoginView();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
            ),
            const SizedBox(
              height: 58,
            ),
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 43,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            const Text(
              'Read without limits',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(
              height: 54,
            ),
            CustomButton(
              text: 'Create an account',
              onPressed: () {},
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderColor: true,
            ),
            CustomButton(
              text: 'Log in as a guest',
              onPressed: () {},
              backgroundColor: primaryColor,
              textColor: Colors.white,
              borderColor: true,
            ),
          ],
        ));
  }
}
