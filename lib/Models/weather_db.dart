import 'package:flutter/material.dart';

class WeatherModel {
  final String city;
  final double temperature;
  final String condition;
  final IconData icon;

  WeatherModel({
    required this.city,
    required this.temperature,
    required this.condition,
    required this.icon,
  });

  // دالة لتحويل البيانات القادمة من API (JSON) إلى Model
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      city: json['city'],
      temperature: json['temperature'],
      condition: json['condition'],
      icon: json['icon'], // في الحقيقة هذا يأتي كنص ونحوله لأيقونة
    );
  }
}