// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bookstore/constants/colors_constants.dart';
import 'package:bookstore/models/category_image_model.dart';
import 'package:bookstore/viiews/category_detail_view.dart';
import 'package:bookstore/widgets/category_image_list_view.dart';
import 'package:bookstore/widgets/category_text_list_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({
    super.key,
  });
  // todo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 13,
          horizontal: 16,
        ),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Row(
                      children: [
                        Icon(Icons.blender),
                        SizedBox(width: 10),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    Text(
                      'Hello, Tricia',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.thumb_up,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Text(
                  'What do you want to read today?',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: secondaryColor,
                    ),
                    hintText: 'Search here ',
                    hintStyle: TextStyle(
                      color: secondaryColor,
                    ),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.mic, color: secondaryColor),
                        SizedBox(width: 8.0),
                        Icon(Icons.menu_book_outlined, color: secondaryColor),
                        SizedBox(width: 8.0),
                      ],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                CategoryTextListView(),
                SizedBox(
                  height: 23,
                ),
                CategoryImageListView(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'New Arrivals',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                // todo
                GestureDetector(
                    onTap: () {
                      // Navigate to the category details page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailView(),
                        ),
                      );
                    },
                    child: CategoryImageListView()),
                SizedBox(
                  height: 23,
                ),
                CategoryImageListView(),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
