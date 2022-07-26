import 'package:flutter/material.dart';

class IconCurrent extends StatelessWidget {
  final String image;
  final Widget child;
  const IconCurrent({ 
    Key? key, 
    required this.image,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: NetworkImage(image),
            fit: BoxFit.fill,
            width: 130,
          ),
          child
        ],
    );
  }
}