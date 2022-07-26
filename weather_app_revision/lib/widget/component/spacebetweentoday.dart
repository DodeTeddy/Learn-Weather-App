import 'package:flutter/material.dart';
import 'package:weather_app_revision/dailypage/dailypage.dart';
import 'package:weather_app_revision/widget/theme/constant.dart';

class SpacebetweenToday extends StatelessWidget {
  final String texttoday;
  final String textday;
  final Icon iconarrow;
  const SpacebetweenToday({ 
    Key? key,
    required this.texttoday,
    required this.textday,
    required this.iconarrow 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          texttoday,
          style: const TextStyle(
            fontSize: 20,
            color: colorAsset
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return const DailyPage();
            }));
          },
          child: Row(
            children: [
              Text(
                textday,
                style: TextStyle(
                  fontSize: 13,
                  color: colorAsset.withOpacity(0.5)
                ),
              ),
              iconarrow
            ],
          ),
        )
      ],
    );
  }
}