// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:bookstore/constants/colors_constants.dart';
import 'package:bookstore/models/category_image_model.dart';
import 'package:bookstore/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CategoryDetailView extends StatelessWidget {
  const CategoryDetailView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 75,
          left: 31,
          right: 31,
        ),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            // todo
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Icon(
                      Icons.favorite,
                      color: primaryColor,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    width: 200,
                    height: 450,
                    // color: Colors.amber,
                    child: Column(
                      children: [
                        Container(
                            width: 200,
                            height: 300,
                            child: Image.asset(
                              'assets/images/5.jpg',
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 17,
                        ),
                        Text(
                          'You % It',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'J.D. Salinger',
                          style: TextStyle(
                            color: secondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star, color: Colors.amber),
                            Icon(Icons.star, color: Colors.amber),
                            Text(
                              '4.9',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            )
                          ],
                        )
                      ],
                    )), // todo
                SizedBox(
                  height: 20,
                ),
                Text(
                  'About the author',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                    'J.D. Salinger was an American writer, best known for his 1951 novel The Catcher in the Rye. Before its publi cation, Salinger published several short stories in Story magazine'),
                SizedBox(
                  height: 17,
                ),
                Text(
                  'Overview',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                    'The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–'),
                SizedBox(
                  height: 25,
                ),
                CustomButton(
                    text: 'Add to cart',
                    onPressed: () {},
                    backgroundColor: primaryColor,
                    textColor: Colors.white,
                    borderColor: false)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
