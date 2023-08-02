import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Image banner;
  final String categoryTitle;
  final VoidCallback onTap;

  const CategoryCard(
      {super.key,
      required this.banner,
      required this.categoryTitle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            boxShadow: [
              BoxShadow(color: Colors.grey[900]!),
            ],
          ),
          margin: const EdgeInsets.only(bottom: 20),
          width: 400,
          child: Center(
              child: Column(children: [
            banner,
            Padding(
              padding: const EdgeInsets.all(3),
              child: Text(categoryTitle,
                  style: const TextStyle(color: Colors.white, fontSize: 18)),
            )
          ])),
        ));
  }
}
