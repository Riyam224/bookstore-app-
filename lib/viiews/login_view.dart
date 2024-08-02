// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:bookstore/constants/colors_constants.dart';
import 'package:bookstore/models/category_image_model.dart';
import 'package:bookstore/viiews/home_view.dart';
import 'package:bookstore/viiews/signup_view.dart';
import 'package:bookstore/widgets/custom_button.dart';
import 'package:bookstore/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Image.asset('assets/images/logo_login.png'),
            ),
          ),
          const SizedBox(
            height: 55,
          ),
          CustomTextField(
            hintText: 'username',
            suffixIcon: Icon(Icons.remove),
          ),
          SizedBox(
            height: 5,
          ),
          CustomTextField(
            hintText: 'password',
            suffixIcon: Icon(
              Icons.visibility_off,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomButton(
              text: 'Log in',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeView()));
              },
              backgroundColor: primaryColor,
              textColor: Colors.white,
              borderColor: true),
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don’t have an account yet? '),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupView(),
                  ),
                ),
                child: Text(
                  'Sign up here',
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
