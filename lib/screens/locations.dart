import 'package:flutter/material.dart';
import 'package:rickandmorty_app/widgets/category_card.dart';
import 'package:rickandmorty_app/widgets/system_app_bar.dart';

class LocationsScreen extends StatelessWidget {
  const LocationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: systemAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              CategoryCard(
                  banner: const Image(
                      image: AssetImage('assets/images/locations.jpg')),
                  categoryTitle: 'Locations',
                  onTap: () => {Navigator.pushNamed(context, '/locations')}),
            ]),
          ),
        ));
  }
}
