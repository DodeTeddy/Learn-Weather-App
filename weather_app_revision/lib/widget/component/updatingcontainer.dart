import 'package:flutter/material.dart';
import 'package:weather_app_revision/widget/theme/constant.dart';

class UpdatingContainer extends StatelessWidget {
  final String text;
  final Widget child;
  const UpdatingContainer({
    Key? key,
    required this.text,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.8,
              color: colorAsset
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            "Updated " + text + "min ago",
            style: const TextStyle(
              fontSize: 12,
              color: colorAsset
            ),
          ),
        ),
        child
      ],
    );
  }
}