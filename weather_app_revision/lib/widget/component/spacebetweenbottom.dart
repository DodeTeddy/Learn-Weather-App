import 'package:flutter/material.dart';

class SpacebetweenBottom extends StatelessWidget {
  final String textstart;
  final String textcenter;
  final String textend;
  const SpacebetweenBottom({ 
    Key? key,
    required this.textstart,
    required this.textcenter,
    required this.textend
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              children: [
                Text(
                  textstart + "kmph",
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.white
                  ),
                ),
                Text(
                  "Wind",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white.withOpacity(0.5)
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text(
                  textcenter + "%",
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.white
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Humidity",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white.withOpacity(0.5)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                textend + "%",
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.white
                ),
              ),
              Text(
                "Chance of rain",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withOpacity(0.5)
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}