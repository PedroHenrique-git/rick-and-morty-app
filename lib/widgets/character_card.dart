import 'package:flutter/material.dart';
import 'package:rickandmorty_app/domain/character.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.all(5),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.network(character.image ?? ''),
            const SizedBox(height: 10),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(character.name ?? '',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      overflow: TextOverflow.ellipsis)),
              Row(
                children: [
                  if (character.status == 'Alive') ...[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                            color: Colors.green, width: 10, height: 10)),
                    const SizedBox(width: 10)
                  ] else if (character.status == 'Dead') ...[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                            color: Colors.red, width: 10, height: 10)),
                    const SizedBox(width: 10)
                  ],
                  Text(character.status ?? '',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          overflow: TextOverflow.ellipsis))
                ],
              ),
              Text(character.origin?['name'] ?? '',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis)),
              Text(character.gender ?? '',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis))
            ])
          ]),
        ));
  }
}
