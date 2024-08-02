// ignore_for_file: prefer_const_constructors, unused_import

import 'package:bookstore/navbar.dart';
import 'package:bookstore/viiews/category_detail_view.dart';
import 'package:bookstore/viiews/home_view.dart';
import 'package:bookstore/viiews/signup_view.dart';
import 'package:bookstore/viiews/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryDetailView(),
    );
  }
}
