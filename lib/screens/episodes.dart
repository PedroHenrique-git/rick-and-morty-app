import 'package:flutter/material.dart';
import 'package:rickandmorty_app/widgets/category_card.dart';
import 'package:rickandmorty_app/widgets/system_app_bar.dart';

class EpisodesScreen extends StatelessWidget {
  const EpisodesScreen({super.key});

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
                      image: AssetImage('assets/images/episodes.jpeg')),
                  categoryTitle: 'Episodes',
                  onTap: () => {Navigator.pushNamed(context, '/episodes')}),
            ]),
          ),
        ));
  }
}
