import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          title: 'Rick Sanchez'.text.bold.subtitle1(context).make(),
          leading: const Icon(Icons.person),
          subtitle: 'Scientist'.text.subtitle2(context).make(),
        );
      },
    );
  }
}
