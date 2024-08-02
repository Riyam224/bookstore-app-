// ignore_for_file: must_be_immutable

import 'package:bookstore/constants/colors_constants.dart';
import 'package:bookstore/models/category_text_model.dart';
import 'package:flutter/material.dart';

class CategoryTextListView extends StatelessWidget {
  CategoryTextListView({
    super.key,
  });

  final categories = [
    Category(id: '1', name: 'Novel'),
    Category(id: '2', name: 'Comedy'),
    Category(id: '3', name: 'Drama'),
    Category(id: '4', name: 'Horror'),
    Category(id: '5', name: 'Romance'),
    Category(id: '6', name: 'Thriller'),
    Category(id: '7', name: 'Fantasy'),
    Category(id: '8', name: 'Sci-Fi'),
    Category(id: '9', name: 'Mystery'),
    Category(id: '10', name: 'Horror'),
    Category(id: '11', name: 'Fiction'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: Container(
              child: Text(
                categories[index].name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: secondaryColor,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
