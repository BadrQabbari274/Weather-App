import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app_flutter/Screens/Registration_page.dart';
import 'package:weather_app_flutter/Screens/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() =>
      _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather App",
          strutStyle: StrutStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 18.0,
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcame",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight:
                            FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.tag_faces,
                      color: Colors.blue,
                      size: 40,
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextField(
                  autocorrect: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("User Name"),
                    icon: Icon(
                      Icons.email,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: TextField(
                  autocorrect: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Password"),
                    icon: Icon(
                      Icons.password,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: SizedBox(
                  height: 45,
                  width: 160,
                  child: TextButton(
                    onPressed: () =>
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                HomePage(),
                          ),
                        ),
                    autofocus: true,
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center,
                      children: [
                        Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight:
                                FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.login,
                          color:
                              Colors.blueAccent,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center,
                children: [
                  Text(
                    "I not Have an account",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () =>
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                RegistrationPage(),
                          ),
                        ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight:
                            FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
