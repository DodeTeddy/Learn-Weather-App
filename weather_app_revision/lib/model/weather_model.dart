class WeatherData {
  Current? current;
  List<Hourly>? hourly;
  List<Daily>? daily;

  WeatherData(
      {
      this.current,
      this.hourly,
      this.daily});

  WeatherData.fromJson(Map<String, dynamic> json) {
    current =
        json['current'] != null ? new Current.fromJson(json['current']) : null;
    if (json['hourly'] != null) {
      hourly = <Hourly>[];
      json['hourly'].forEach((v) {
        hourly!.add(new Hourly.fromJson(v));
      });
    }
    if (json['daily'] != null) {
      daily = <Daily>[];
      json['daily'].forEach((v) {
        daily!.add(new Daily.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.current != null) {
      data['current'] = this.current!.toJson();
    }
    if (this.hourly != null) {
      data['hourly'] = this.hourly!.map((v) => v.toJson()).toList();
    }
    if (this.daily != null) {
      data['daily'] = this.daily!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Current {
  int? dt;
  double? temp;
  int? humidity;
  int? clouds;
  double? windSpeed;
  List<Weather>? weather;

  Current(
      {this.dt,
      this.temp,
      this.humidity,
      this.clouds,
      this.windSpeed,
      this.weather});

  Current.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    temp = json['temp'];
    humidity = json['humidity'];
    clouds = json['clouds'];
    windSpeed = json['wind_speed'];
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(new Weather.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dt'] = this.dt;
    data['temp'] = this.temp;
    data['humidity'] = this.humidity;
    data['clouds'] = this.clouds;
    data['wind_speed'] = this.windSpeed;
    if (this.weather != null) {
      data['weather'] = this.weather!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Weather {
  int? id;
  String? main;
  String? description;
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['main'] = this.main;
    data['description'] = this.description;
    data['icon'] = this.icon;
    return data;
  }
}

class Hourly {
  int? dt;
  double? temp;
  List<WeatherH>? weather;

  Hourly({this.dt, this.temp, this.weather});

  Hourly.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    temp = json['temp'].toDouble();
    if (json['weather'] != null) {
      weather = <WeatherH>[];
      json['weather'].forEach((v) {
        weather!.add(new WeatherH.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dt'] = this.dt;
    data['temp'] = this.temp;
    if (this.weather != null) {
      data['weather'] = this.weather!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WeatherH {
  String? icon;

  WeatherH({this.icon});

  WeatherH.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    return data;
  }
}

class Daily {
  int? dt;
  Temp? temp;
  Temp? feelsLike;
  int? humidity;
  double? windSpeed;
  List<Weather>? weather;
  int? clouds;

  Daily(
      {this.dt,
      this.temp,
      this.feelsLike,
      this.humidity,
      this.windSpeed,
      this.weather,
      this.clouds});

  Daily.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    temp = json['temp'] != null ? new Temp.fromJson(json['temp']) : null;
    feelsLike = json['feels_like'] != null
        ? new Temp.fromJson(json['feels_like'])
        : null;
    humidity = json['humidity'];
    windSpeed = json['wind_speed'];
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(new Weather.fromJson(v));
      });
    }
    clouds = json['clouds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dt'] = this.dt;
    if (this.temp != null) {
      data['temp'] = this.temp!.toJson();
    }
    if (this.feelsLike != null) {
      data['feels_like'] = this.feelsLike!.toJson();
    }
    data['humidity'] = this.humidity;
    data['wind_speed'] = this.windSpeed;
    if (this.weather != null) {
      data['weather'] = this.weather!.map((v) => v.toJson()).toList();
    }
    data['clouds'] = this.clouds;
    return data;
  }
}

class Temp {
  double? day;

  Temp({this.day});

  Temp.fromJson(Map<String, dynamic> json) {
    day = json['day'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    return data;
  }
}