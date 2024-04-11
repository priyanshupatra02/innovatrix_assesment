import 'package:flutter/material.dart';
import 'package:innovatrix_assesment/data/model/character_model.dart';
import 'package:velocity_x/velocity_x.dart';

class CharacterWidget extends StatelessWidget {
  const CharacterWidget({
    super.key,
    required this.characterResult,
  });

  final List<CharacterResults> characterResult;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: characterResult[index].name.text.xl.bold.make(),
      leading: Image.network(
        characterResult[index].image,
        height: 100,
        width: 70,
        fit: BoxFit.cover,
      ),
      subtitle: '${characterResult[index].species} - ${characterResult[index].status}'
          .text
          .make(),
    );
  }
}
