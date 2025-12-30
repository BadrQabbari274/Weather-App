import 'package:flutter/material.dart';
import 'package:weather_app_flutter/Models/weather_db.dart';
import 'package:weather_app_flutter/Screens/details.dart';
import 'package:weather_app_flutter/Utils/helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() =>
      _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // نستخدم الـ Helper هنا
  final WeatherHelper _weatherHelper =
      WeatherHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor:
            Colors.white, // لجعل النص أبيض
      ),
      body: SafeArea(
        // نستخدم FutureBuilder للتعامل مع البيانات القادمة من الـ API
        child: FutureBuilder<List<WeatherModel>>(
          future: _weatherHelper.getWeather(),
          builder: (context, snapshot) {
            // حالة التحميل
            if (snapshot.connectionState ==
                ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              );
            }
            // حالة الخطأ
            else if (snapshot.hasError) {
              return Center(
                child: Text(
                  "Error: ${snapshot.error}",
                ),
              );
            }
            // حالة وجود بيانات
            else if (snapshot.hasData) {
              final weatherList = snapshot.data!;
              return ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: weatherList.length,
                itemBuilder: (context, index) {
                  final item = weatherList[index];
                  return Card(
                    color: Colors
                        .blue
                        .shade50, // خلفية زرقاء فاتحة للكارد
                    margin:
                        const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor:
                            Colors.blueAccent,
                        child: Icon(
                          item.icon,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        item.city,
                        style: const TextStyle(
                          fontWeight:
                              FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      subtitle: Text(
                        item.condition,
                      ),
                      trailing: Text(
                        "${item.temperature}°",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        // الانتقال لصفحة التفاصيل
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailsPage(
                                  weather: item,
                                ),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            }
            return const Center(
              child: Text("No Data Found"),
            );
          },
        ),
      ),
    );
  }
}
