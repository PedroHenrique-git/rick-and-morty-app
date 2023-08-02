import 'package:flutter/material.dart';

PreferredSizeWidget systemAppBar() {
  return AppBar(
    centerTitle: true,
    scrolledUnderElevation: 0,
    iconTheme: const IconThemeData(color: Colors.white),
    title: const Text(
      'Rick and morty library',
      style: TextStyle(color: Colors.white, fontSize: 18),
    ),
  );
}
