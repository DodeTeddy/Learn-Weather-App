import 'package:flutter/material.dart';
import 'package:weather_app_revision/widget/theme/constant.dart';

class ContainerGlowTomorrow extends StatelessWidget {
  final Widget child;
  const ContainerGlowTomorrow({ Key? key, required this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 365,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [colorTop, colorBottom]
        ),
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(80),
          bottomLeft: Radius.circular(80)
        ),
        border: Border.all(
          color: colorTop,
          width: 2
        ),
        boxShadow: [
          BoxShadow(
            color: colorBottom.withOpacity(0.4),
            spreadRadius: -7,
            blurRadius: 3,
            offset: const Offset(0, 20),
          ),
          BoxShadow(
            color: colorBottom.withOpacity(0.3),
            spreadRadius: 7,
            blurRadius: 85,
            offset: const Offset(0, 80),
          ),
        ]
      ),
      child: child,
    );
  }
}