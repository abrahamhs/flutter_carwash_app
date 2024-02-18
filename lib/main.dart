import 'package:flutter/material.dart';
import 'package:flutter_delivery/src/pages/login/login.page.dart';
import 'package:flutter_delivery/src/pages/register/register_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
  
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Delivery App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage())

      ],
      theme: ThemeData(
        primaryColor: Colors.amber,
        colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Colors.amber,
            onPrimary: Colors.grey,
            secondary: Colors.amberAccent,
            onSecondary: Colors.grey,
            error: Colors.grey,
            onError: Colors.grey,
            background: Colors.white,
            onBackground: Colors.blueAccent,
            surface: Colors.amber,
            onSurface: Colors.grey
        )
      ),
      navigatorKey: Get.key,
    );

  }
}

