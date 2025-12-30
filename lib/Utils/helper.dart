import 'package:flutter/material.dart';
import 'package:weather_app_flutter/Models/weather_db.dart';

class WeatherHelper {
  // دالة لجلب البيانات (Get Request)
  Future<List<WeatherModel>> getWeather() async {
    // محاكاة تأخير الشبكة (Simulate Network Delay)
    await Future.delayed(const Duration(seconds: 2));

    // هنا المفروض نكتب كود http.get ونعمل decode للـ response
    // سأقوم بإرجاع بيانات وهمية (Mock Data) للتجربة فوراً
    List<WeatherModel> mockData = [
      WeatherModel(city: "Cairo", temperature: 30.5, condition: "Sunny", icon: Icons.wb_sunny),
      WeatherModel(city: "Alexandria", temperature: 28.0, condition: "Cloudy", icon: Icons.cloud),
      WeatherModel(city: "London", temperature: 15.0, condition: "Rainy", icon: Icons.water_drop),
      WeatherModel(city: "Dubai", temperature: 40.0, condition: "Hot", icon: Icons.wb_sunny_rounded),
      WeatherModel(city: "New York", temperature: 22.0, condition: "Clear", icon: Icons.wb_cloudy),
    ];

    return mockData;
  }
}