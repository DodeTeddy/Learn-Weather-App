import 'package:flutter/material.dart';
import 'package:weather_app_revision/widget/theme/constant.dart';

class SpacebetweenItem extends StatelessWidget {
  final Icon iconstart;
  final Icon iconcenter;
  final String location;
  final Icon iconend;
  final Widget child;
  const SpacebetweenItem({
    Key? key,
    required this.iconstart,
    required this.iconcenter,
    required this.location,
    required this.iconend,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            iconstart,
            Row(
              children: <Widget>[
                iconcenter,
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: colorAsset
                  ),
                ),
              ],
            ),
            iconend
          ],
        ),
        child
      ],
    );
  }
}