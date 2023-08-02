import 'package:flutter/material.dart';
import 'package:rickandmorty_app/domain/character_response.dart';
import 'package:rickandmorty_app/services/rick_and_morty_service.dart';
import 'package:rickandmorty_app/widgets/character_card.dart';
import 'package:rickandmorty_app/widgets/pagination.dart';
import 'package:rickandmorty_app/widgets/system_app_bar.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late Future<CharacterResponse> charactersResponse;
  int currentPage = 1;
  final service = RickAndMortyService();

  @override
  void initState() {
    charactersResponse = service.getCharacters(page: currentPage);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: systemAppBar(),
        body: Center(
          child: FutureBuilder(
              future: charactersResponse,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(children: [
                      Expanded(
                          child: GridView.count(
                              childAspectRatio: (itemWidth / itemHeight),
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              children: [
                            for (var character in snapshot.data?.results ?? [])
                              CharacterCard(character: character)
                          ])),
                      Pagination(
                          hasNextPage: snapshot.data?.info?.next != null,
                          hasPrevPage: snapshot.data?.info?.prev != null,
                          goToNextPage: () => {
                                setState(() {
                                  if (currentPage ==
                                      snapshot.data?.info?.pages) {
                                    return;
                                  }

                                  currentPage += 1;

                                  charactersResponse =
                                      service.getCharacters(page: currentPage);
                                })
                              },
                          goToPrevPage: () => {
                                setState(() {
                                  if (currentPage == 1) {
                                    return;
                                  }

                                  currentPage -= 1;

                                  charactersResponse =
                                      service.getCharacters(page: currentPage);
                                })
                              })
                    ]),
                  );
                }

                return CircularProgressIndicator(color: Colors.grey[900]);
              }),
        ));
  }
}
