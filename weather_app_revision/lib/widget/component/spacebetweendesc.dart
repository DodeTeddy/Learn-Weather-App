import 'package:flutter/material.dart';
import 'package:weather_app_revision/widget/theme/constant.dart';

class SpacebetweenDesc extends StatelessWidget {
  final String img1;
  final String desc1;
  final String img2;
  final String desc2;
  final String img3;
  final String desc3;
  final String img4;
  final String desc4;
  final String img5;
  final String desc5;
  final String img6;
  final String desc6;
  
  const SpacebetweenDesc({ 
    Key? key ,
    required this.img1,
    required this.desc1,
    required this.img2,
    required this.desc2,
    required this.img3,
    required this.desc3,
    required this.img4,
    required this.desc4,
    required this.img5,
    required this.desc5,
    required this.img6,
    required this.desc6,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Image(
              image: NetworkImage(img1),
              width: 50,
            ),
            Text(
              desc1,
              style: const TextStyle(
                fontSize: 15,
                color: colorAsset
              ),
            ),
          ],
        ),
        Row(
          children: [
            Image(
              image: NetworkImage(img2),
              width: 50,
            ),
            Text(
              desc2,
              style: const TextStyle(
                fontSize: 15,
                color: colorAsset
              ),
            ),
          ],
        ),
        Row(
          children: [
            Image(
              image: NetworkImage(img3),
              width: 50,
            ),
            Text(
              desc3,
              style: const TextStyle(
                fontSize: 15,
                color: colorAsset
              ),
            ),
          ],
        ),
        Row(
          children: [
            Image(
              image: NetworkImage(img4),
              width: 50,
            ),
            Text(
              desc4,
              style: const TextStyle(
                fontSize: 15,
                color: colorAsset
              ),
            ),
          ],
        ),
        Row(
          children: [
            Image(
              image: NetworkImage(img5),
              width: 50,
            ),
            Text(
              desc5,
              style: const TextStyle(
                fontSize: 15,
                color: colorAsset
              ),
            ),
          ],
        ),
        Row(
          children: [
            Image(
              image: NetworkImage(img6),
              width: 50,
            ),
            Text(
              desc6,
              style: const TextStyle(
                fontSize: 15,
                color: colorAsset
              ),
            ),
          ],
        ),
      ],
    );
  }
}