import 'package:flutter/material.dart';
import 'package:rickandmorty_app/widgets/category_card.dart';

class LocationsScreen extends StatelessWidget {
  const LocationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          scrolledUnderElevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Rick and morty library',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
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
