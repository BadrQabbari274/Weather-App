import 'package:flutter/material.dart';
import 'package:weather_app_flutter/Models/weather_db.dart';

class DetailsPage extends StatelessWidget {
  final WeatherModel weather;

  const DetailsPage({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(weather.city),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(weather.icon, size: 100, color: Colors.blueAccent),
            const SizedBox(height: 20),
            Text(
              "${weather.temperature}°C",
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Text(
              weather.condition,
              style: const TextStyle(fontSize: 30, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}