import 'package:contoh_getx_route/screen_three.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Two"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text("ini screen 2"),
              ElevatedButton(
                  onPressed: () {
                    Get.off(ScreenThree());
                  },
                  child: Text("move to screen 3")),
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("close page"))
            ],
          ),
        ),
      ),
    );
  }
}

