import 'package:bookstore/constants/colors_constants.dart';
import 'package:bookstore/viiews/category_detail_view.dart';
import 'package:bookstore/widgets/category_text_list_view.dart';
import 'package:flutter/material.dart';

import '../models/category_image_model.dart';

class CategoryImageListView extends StatelessWidget {
  CategoryImageListView({super.key});

  final categories = [
    CategoryImage(
      id: '1',
      image: 'assets/images/1.jpg',
      name: 'Novel',
    ),
    CategoryImage(
      id: '2',
      image: 'assets/images/2.jpg',
      name: 'Comedy',
    ),
    CategoryImage(
      id: '3',
      image: 'assets/images/3.jpg',
      name: 'Drama',
    ),
    CategoryImage(
      id: ' 4',
      image: 'assets/images/4.jpg',
      name: 'Horror',
    ),
    CategoryImage(
      id: '5',
      image: 'assets/images/5.jpg',
      name: 'Romance',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.6,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            // todo click on category image to go to cateogoy details
            child: Container(
                height: 260.6,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primaryColor,
                        ),
                        child: Image.asset(
                          categories[index].image,
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      categories[index].name,
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
