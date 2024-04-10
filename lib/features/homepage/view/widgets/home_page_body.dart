import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/features/homepage/controller/characters_pod.dart';
import 'package:innovatrix_assesment/shared/riverpod_ext/asynvalue_easy_when.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final characterProvider = ref.watch(getCharactersProvider);
        return characterProvider.easyWhen(data: (charactersModel) {
          return ListView.builder(
            itemCount: charactersModel.data.characters.results.length,
            itemBuilder: (context, index) {
              final characterResult = charactersModel.data.characters.results;
              return ListTile(
                title: characterResult[index].name.text.xl.bold.make(),
                leading: Image.network(
                  characterResult[index].image,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                subtitle: '${characterResult[index].species} - ${characterResult[index].status}'
                    .text
                    .make(),
              );
            },
          );
        });
      },
    );
  }
}
