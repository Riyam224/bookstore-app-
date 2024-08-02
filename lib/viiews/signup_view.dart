// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookstore/constants/colors_constants.dart';
import 'package:bookstore/viiews/home_view.dart';
import 'package:bookstore/viiews/login_view.dart';
import 'package:bookstore/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

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
            hintText: 'Jane Doe',
            suffixIcon: Icon(Icons.remove),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            hintText: 'janedoe',
            suffixIcon: Icon(
              Icons.verified_user,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            hintText: 'jane@gmail.com',
            suffixIcon: Icon(
              Icons.visibility_off,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          CustomTextField(
            hintText: '********',
            suffixIcon: Icon(
              Icons.visibility_off,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeView(),
                    ),
                  ),
              text: 'sign up',
              onPressed: () {},
              backgroundColor: primaryColor,
              textColor: Colors.white,
              borderColor: true),
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account '),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginView();
                  }));
                },
                child: Text(
                  'Login',
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
