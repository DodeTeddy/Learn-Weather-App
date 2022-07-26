import 'package:flutter/material.dart';
import 'package:weather_app_revision/widget/theme/constant.dart';

class ContainerHourly extends StatelessWidget {
  final String temp;
  final String image;
  final String hour;
  const ContainerHourly({ 
    Key? key,
    required this.temp,
    required this.image,
    required this.hour
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: <Widget>[
          Text(
            temp + "°",
            style: const TextStyle(
              color: colorAsset,
              fontSize: 17
            ),
          ),
          Image(
            image: NetworkImage(image),
            height: 50,
          ),
          Text(
            hour,
            style: const TextStyle(
              fontSize: 13,
              color: colorAsset
            ),
          )
        ],
      ),
    );
  }
}