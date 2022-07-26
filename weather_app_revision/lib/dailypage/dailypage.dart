import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_revision/model/weather_model.dart';
import 'package:weather_app_revision/service/api_weather_app.dart';
import 'package:weather_app_revision/widget/component/containerglowtomorrow.dart';
import 'package:weather_app_revision/widget/component/iconandtemptomorrow.dart';
import 'package:weather_app_revision/widget/component/spacebetweenbottom.dart';
import 'package:weather_app_revision/widget/component/spacebetweendaily.dart';
import 'package:weather_app_revision/widget/component/spacebetweendesc.dart';
import 'package:weather_app_revision/widget/component/spacebetweenitem.dart';
import 'package:weather_app_revision/widget/component/spacebetweentempandhum.dart';
import 'package:weather_app_revision/widget/theme/constant.dart';

class DailyPage extends StatefulWidget {
  const DailyPage({ Key? key }) : super(key: key);

  @override
  State<DailyPage> createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  WeatherApi weatherApi = WeatherApi();
  WeatherData? weatherData;

  Future<void> getData() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    permission = await Geolocator.requestPermission();
    if( permission == LocationPermission.denied){
        permission = await Geolocator.requestPermission();
    } else {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      weatherData = await weatherApi.getData(position.latitude.toString(), position.longitude.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: getData,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.done){
                String img = weatherData!.daily![1].weather![0].icon.toString();
                String img1 = weatherData!.daily![0].weather![0].icon.toString();
                String img2 = weatherData!.daily![2].weather![0].icon.toString();
                String img3 = weatherData!.daily![3].weather![0].icon.toString();
                String img4 = weatherData!.daily![4].weather![0].icon.toString();
                String img5 = weatherData!.daily![5].weather![0].icon.toString();
                String img6 = weatherData!.daily![6].weather![0].icon.toString();
              
                // int date1 = weatherData!.daily![0].dt!;
                // final DateTime dateTime1 = DateTime.fromMillisecondsSinceEpoch(date1 * 1000);
                int date2 = weatherData!.daily![2].dt!;
                final DateTime dateTime2 = DateTime.fromMillisecondsSinceEpoch(date2 * 1000);
                int date3 = weatherData!.daily![3].dt!;
                final DateTime dateTime3 = DateTime.fromMillisecondsSinceEpoch(date3 * 1000);
                int date4 = weatherData!.daily![4].dt!;
                final DateTime dateTime4 = DateTime.fromMillisecondsSinceEpoch(date4 * 1000);
                int date5 = weatherData!.daily![5].dt!;
                final DateTime dateTime5 = DateTime.fromMillisecondsSinceEpoch(date5 * 1000);
                int date6 = weatherData!.daily![6].dt!;
                final DateTime dateTime6 = DateTime.fromMillisecondsSinceEpoch(date6 * 1000);
              
                return Column(
                  children: <Widget>[
                    ContainerGlowTomorrow(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 35, right: 15, left: 20),
                        child: SpacebetweenItem(
                          iconstart: const Icon(Icons.grid_view_rounded, color: colorAsset, size: 30),
                          iconcenter: const Icon(Icons.calendar_today_outlined, color: colorAsset, size: 20), 
                          location: " 7 Days", 
                          iconend: const Icon(Icons.more_vert, color: colorAsset, size: 30), 
                          child: IconAndTempTomorrow(
                            image: "http://openweathermap.org/img/wn/$img@2x.png", 
                            text: "Tomorrow", 
                            temp: weatherData!.daily![1].temp!.day!.round().toString(),
                            humi: weatherData!.daily![1].feelsLike!.day!.round().toString(), 
                            desc: weatherData!.daily![1].weather![0].main.toString(), 
                            child: SpacebetweenBottom(
                              textstart: weatherData!.daily![1].windSpeed!.round().toString(), 
                              textcenter: weatherData!.daily![1].humidity!.round().toString(), 
                              textend: weatherData!.daily![1].clouds!.round().toString()
                            )
                          )
                        ),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SpacebetweenDaily(
                            day1: "Today", 
                            day2: DateFormat.E().format(dateTime2), 
                            day3: DateFormat.E().format(dateTime3), 
                            day4: DateFormat.E().format(dateTime4), 
                            day5: DateFormat.E().format(dateTime5), 
                            day6: DateFormat.E().format(dateTime6)
                          ),
                          SpacebetweenDesc(
                            img1: "http://openweathermap.org/img/wn/$img1@2x.png", desc1: weatherData!.daily![0].weather![0].main.toString(),
                            img2: "http://openweathermap.org/img/wn/$img2@2x.png", desc2: weatherData!.daily![2].weather![0].main.toString(), 
                            img3: "http://openweathermap.org/img/wn/$img3@2x.png", desc3: weatherData!.daily![3].weather![0].main.toString(), 
                            img4: "http://openweathermap.org/img/wn/$img4@2x.png", desc4: weatherData!.daily![4].weather![0].main.toString(), 
                            img5: "http://openweathermap.org/img/wn/$img5@2x.png", desc5: weatherData!.daily![5].weather![0].main.toString(), 
                            img6: "http://openweathermap.org/img/wn/$img6@2x.png", desc6: weatherData!.daily![6].weather![0].main.toString()
                          ),
                          SpacebetweenTempAndHum(
                            temp1: weatherData!.daily![0].temp!.day!.round().toString(), hum1: weatherData!.daily![0].feelsLike!.day!.round().toString(), 
                            temp2: weatherData!.daily![2].temp!.day!.round().toString(), hum2: weatherData!.daily![2].feelsLike!.day!.round().toString(), 
                            temp3: weatherData!.daily![3].temp!.day!.round().toString(), hum3: weatherData!.daily![3].feelsLike!.day!.round().toString(), 
                            temp4: weatherData!.daily![4].temp!.day!.round().toString(), hum4: weatherData!.daily![4].feelsLike!.day!.round().toString(), 
                            temp5: weatherData!.daily![5].temp!.day!.round().toString(), hum5: weatherData!.daily![5].feelsLike!.day!.round().toString(), 
                            temp6: weatherData!.daily![6].temp!.day!.round().toString(), hum6: weatherData!.daily![6].feelsLike!.day!.round().toString()
                          )
                        ],
                      ),
                    )
                  ],
                );
              } else if(snapshot.connectionState == ConnectionState.waiting) {
                return const Padding(
                  padding: EdgeInsets.only(top: 350),
                  child: Center(
                    child: CircularProgressIndicator()
                  ),
                );
              }
              return Container();
            }
          ),
        ),
      )
    );
  }
}

