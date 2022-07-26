import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_revision/model/weather_model.dart';
import 'package:weather_app_revision/model/weathercurrent_model.dart';
import 'package:weather_app_revision/service/api_weather_app.dart';
import 'package:weather_app_revision/widget/component/containerglowcurrent.dart';
import 'package:weather_app_revision/widget/component/containerhourly.dart';
import 'package:weather_app_revision/widget/component/iconcurrent.dart';
import 'package:weather_app_revision/widget/component/spacebetweenbottom.dart';
import 'package:weather_app_revision/widget/component/spacebetweenitem.dart';
import 'package:weather_app_revision/widget/component/spacebetweentoday.dart';
import 'package:weather_app_revision/widget/component/texttempcurrent.dart';
import 'package:weather_app_revision/widget/component/updatingcontainer.dart';
import 'package:weather_app_revision/widget/theme/constant.dart';

class CurrentPage extends StatefulWidget {
  const CurrentPage({ Key? key }) : super(key: key);

  @override
  State<CurrentPage> createState() => _CurrentPageState();
}

class _CurrentPageState extends State<CurrentPage> {
  WeatherApi weatherApi = WeatherApi();
  WeatherCurrentApi weatherCurrentApi = WeatherCurrentApi();
  WeatherData? weatherData;
  WeatherDataCurrent? weatherDataCurrent;
  String latitude = "";
  String longitude = "";
  String updating = "";
  int minuteUpdate = 0;

  Future<void> getData() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    permission = await Geolocator.requestPermission();
    if( permission == LocationPermission.denied){
        permission = await Geolocator.requestPermission();
    } else if( permission == LocationPermission.whileInUse || permission == LocationPermission.always) {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      latitude = position.latitude.toString();
      longitude = position.longitude.toString();
      weatherDataCurrent = await weatherCurrentApi.getData(latitude, longitude);
      weatherData = await weatherApi.getData(latitude, longitude);
      print(latitude);
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
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                String img = weatherData!.current!.weather![0].icon.toString();
                String img1 = weatherData!.hourly![1].weather![0].icon.toString();
                String img2 = weatherData!.hourly![2].weather![0].icon.toString();
                String img3 = weatherData!.hourly![3].weather![0].icon.toString();
                String img4 = weatherData!.hourly![4].weather![0].icon.toString();
              
                int date1 = weatherData!.hourly![1].dt!;
                final DateTime dateTime1 = DateTime.fromMillisecondsSinceEpoch(date1 * 1000);
                int date2 = weatherData!.hourly![2].dt!;
                final DateTime dateTime2 = DateTime.fromMillisecondsSinceEpoch(date2 * 1000);
                int date3 = weatherData!.hourly![3].dt!;
                final DateTime dateTime3 = DateTime.fromMillisecondsSinceEpoch(date3 * 1000);
                int date4 = weatherData!.hourly![4].dt!;
                final DateTime dateTime4 = DateTime.fromMillisecondsSinceEpoch(date4 * 1000);
                
                return Column(
                  children: <Widget>[
                    ContainerGlowCurrent(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 35, right: 15, left: 20),
                        child: SpacebetweenItem(
                          iconstart: const Icon(Icons.grid_view_rounded, color: colorAsset, size: 30), 
                          iconcenter: const Icon(Icons.location_on, color: colorAsset,size: 20), 
                          location: weatherDataCurrent!.name.toString(), 
                          iconend: const Icon(Icons.more_vert, color: colorAsset, size: 30),
                          child: UpdatingContainer(
                            text: updating, //must update
                            child: IconCurrent(
                              image: "http://openweathermap.org/img/wn/$img@2x.png",
                              child: TextTempCurrent(
                                temp: weatherData!.current!.temp!.round().toString(),
                                desc: weatherData!.current!.weather![0].main.toString(),
                                child: SpacebetweenBottom(
                                  textstart: weatherData!.current!.windSpeed!.round().toString(), 
                                  textcenter: weatherData!.current!.humidity.toString(), 
                                  textend: weatherData!.current!.clouds!.toString()
                                )
                              )
                            )
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
                      child: SpacebetweenToday(
                        texttoday: "Today", 
                        textday: "7 days", 
                        iconarrow: Icon(Icons.arrow_forward_ios, color: colorAsset.withOpacity(0.5), size: 13)
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5),
                            child: ContainerHourly(
                              temp: weatherData!.hourly![1].temp!.round().toString(), 
                              image: "http://openweathermap.org/img/wn/$img1@2x.png", 
                              hour: DateFormat.Hm().format(dateTime1)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5),
                            child: ContainerHourly(
                              temp: weatherData!.hourly![2].temp!.round().toString(), 
                              image: "http://openweathermap.org/img/wn/$img2@2x.png", 
                              hour: DateFormat.Hm().format(dateTime2)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5),
                            child: ContainerHourly(
                              temp: weatherData!.hourly![3].temp!.round().toString(), 
                              image: "http://openweathermap.org/img/wn/$img3@2x.png", 
                              hour: DateFormat.Hm().format(dateTime3)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5),
                            child: ContainerHourly(
                              temp: weatherData!.hourly![4].temp!.round().toString(), 
                              image: "http://openweathermap.org/img/wn/$img4@2x.png", 
                              hour: DateFormat.Hm().format(dateTime4)
                            ),
                          ),
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
      ),
    );
  }
}