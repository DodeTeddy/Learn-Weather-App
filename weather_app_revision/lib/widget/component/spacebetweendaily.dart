import 'package:flutter/material.dart';
import 'package:weather_app_revision/widget/theme/constant.dart';

class SpacebetweenDaily extends StatelessWidget {
  final String day1;
  final String day2;
  final String day3;
  final String day4;
  final String day5;
  final String day6;
  const SpacebetweenDaily({ 
    Key? key,
    required this.day1,
    required this.day2,
    required this.day3,
    required this.day4,
    required this.day5,
    required this.day6
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          day1,
          style: const TextStyle(
            fontSize: 15,
            color: colorAsset
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            day2,
            style: const TextStyle(
              fontSize: 15,
              color: colorAsset
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            day3,
            style: const TextStyle(
              fontSize: 15,
              color: colorAsset
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            day4,
            style: const TextStyle(
              fontSize: 15,
              color: colorAsset
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            day5,
            style: const TextStyle(
              fontSize: 15,
              color: colorAsset
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            day6,
            style: const TextStyle(
              fontSize: 15,
              color: colorAsset
            ),
          ),
        ),
      ],
    );
  }
}