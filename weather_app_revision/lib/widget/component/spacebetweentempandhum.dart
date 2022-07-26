import 'package:flutter/material.dart';
import 'package:weather_app_revision/widget/theme/constant.dart';

class SpacebetweenTempAndHum extends StatelessWidget {
  final String temp1;
  final String hum1;
  final String temp2;
  final String hum2;
  final String temp3;
  final String hum3;
  final String temp4;
  final String hum4;
  final String temp5;
  final String hum5;
  final String temp6;
  final String hum6;

  const SpacebetweenTempAndHum({ 
    Key? key ,
    required this.temp1,
    required this.hum1,
    required this.temp2,
    required this.hum2,
    required this.temp3,
    required this.hum3,
    required this.temp4,
    required this.hum4,
    required this.temp5,
    required this.hum5,
    required this.temp6,
    required this.hum6
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Text(
              "+$temp1°",
              style: const TextStyle(
                fontSize: 15,
                color: colorAsset
              ),
            ),
            Text(
              "+$hum1°",
              style: TextStyle(
                fontSize: 14,
                color: colorAsset.withOpacity(0.5)
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Text(
                "+$temp2°",
                style: const TextStyle(
                  fontSize: 15,
                  color: colorAsset
                ),
              ),
              Text(
                "+$hum2°",
                style: TextStyle(
                  fontSize: 14,
                  color: colorAsset.withOpacity(0.5)
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Text(
                "+$temp3°",
                style: const TextStyle(
                  fontSize: 15,
                  color: colorAsset
                ),
              ),
              Text(
                "+$hum3°",
                style: TextStyle(
                  fontSize: 14,
                  color: colorAsset.withOpacity(0.5)
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Text(
                "+$temp4°",
                style: const TextStyle(
                  fontSize: 15,
                  color: colorAsset
                ),
              ),
              Text(
                "+$hum4°",
                style: TextStyle(
                  fontSize: 14,
                  color: colorAsset.withOpacity(0.5)
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Text(
                "+$temp5°",
                style: const TextStyle(
                  fontSize: 15,
                  color: colorAsset
                ),
              ),
              Text(
                "+$hum5°",
                style: TextStyle(
                  fontSize: 14,
                  color: colorAsset.withOpacity(0.5)
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Text(
                "+$temp6°",
                style: const TextStyle(
                  fontSize: 15,
                  color: colorAsset
                ),
              ),
              Text(
                "+$hum6°",
                style: TextStyle(
                  fontSize: 14,
                  color: colorAsset.withOpacity(0.5)
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}