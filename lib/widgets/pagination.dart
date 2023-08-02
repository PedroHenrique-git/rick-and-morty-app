import 'package:flutter/material.dart';

class Pagination extends StatelessWidget {
  final bool hasNextPage;
  final bool hasPrevPage;
  final VoidCallback goToNextPage;
  final VoidCallback goToPrevPage;

  const Pagination(
      {super.key,
      required this.goToNextPage,
      required this.goToPrevPage,
      required this.hasNextPage,
      required this.hasPrevPage});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      if (hasPrevPage) ...[
        TextButton(
            onPressed: goToPrevPage,
            style: TextButton.styleFrom(foregroundColor: Colors.grey[900]),
            child: const Text('Prev')),
        const SizedBox(width: 25)
      ],
      if (hasNextPage)
        TextButton(
            onPressed: goToNextPage,
            style: TextButton.styleFrom(foregroundColor: Colors.grey[900]),
            child: const Text('Next'))
    ]);
  }
}
