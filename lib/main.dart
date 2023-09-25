import 'package:contoh_getx_route/screen_one/bind_screen_one.dart';
import 'package:contoh_getx_route/screen_one/screen_one.dart';
import 'package:contoh_getx_route/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => ScreenOne(),
          binding: ScreenOneBind(),
        ),
        GetPage(
          name: "/screentwo",
          page: () => ScreenTwo(),
          // binding: ScreenOneBind(),
        ),
        // another page
      ],
    );
  }
}