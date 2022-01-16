import 'package:flutter/material.dart';
import 'package:state_managements_in_life/feature/onboard/onboard_model.dart';

class OnBoardCard extends StatelessWidget {
  const OnBoardCard({Key? key, required this.model}) : super(key: key);
  final OnBoardModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          model.title,
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(model.description),
        Image.asset(model.imageWithPath),
      ],
    );
  }
}
