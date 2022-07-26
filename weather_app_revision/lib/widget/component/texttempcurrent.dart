import 'package:flutter/material.dart';
import 'package:weather_app_revision/widget/theme/constant.dart';
import 'package:intl/intl.dart';

class TextTempCurrent extends StatelessWidget {
  final String temp;
  final String desc;
  final Widget child;
  const TextTempCurrent({ 
    Key? key,
    required this.temp,
    required this.desc,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                temp,
                style: const TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.w800,
                  color: colorAsset
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    "°",
                      style: TextStyle(
                      fontSize: 70,
                      color: colorAsset.withOpacity(0.5)
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Text(
          desc,
          style: const TextStyle(
            fontSize: 20,
            color: colorAsset,
            fontWeight: FontWeight.w800
          ),
        ),
        Text(
          "Today, " + DateFormat("dd MMMM").format(DateTime.now()),
          style: TextStyle(
            fontSize: 13,
            color: colorAsset.withOpacity(0.5)
          ),
        ),
        child
      ],
    );
  }
}