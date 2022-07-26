import 'package:flutter/material.dart';
import 'package:weather_app_revision/widget/theme/constant.dart';

class IconAndTempTomorrow extends StatelessWidget {
  final String image;
  final String text;
  final String temp;
  final String humi;
  final String desc;
  final Widget child;
  const IconAndTempTomorrow({ 
    Key? key, 
    required this.image,
    required this.text,
    required this.temp,
    required this.humi,
    required this.desc,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: NetworkImage(image),
                fit: BoxFit.fill,
                width: 130,
              ),
              Column(
                children: <Widget>[
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 20,
                      color: colorAsset
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Row(
                      children: <Widget>[
                        Text(
                          temp,
                          style: const TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.w800,
                            color: colorAsset
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            "/"+humi+"°",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: colorAsset.withOpacity(0.5)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    desc,
                    style: TextStyle(
                      fontSize: 17,
                      color: colorAsset.withOpacity(0.5)
                    ),
                  )
                ],
              )
            ],
          ),
          child
        ],
      ),
    );
  }
}