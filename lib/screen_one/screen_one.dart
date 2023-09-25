import 'package:contoh_getx_route/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ctr_screen_one.dart';

class ScreenOne extends GetView<ControllerScreenOne> {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text("ini screen 1"),
              Text(controller.name.value.toString()),
              ElevatedButton(
                  onPressed: () {
                    // ketika belum pakai binding
                    // Get.to(ScreenTwo());
                    Get.toNamed("/screentwo");
                  },
                  child: Text("move to screen 2"))
            ],
          ),
        ),
      ),
    );
  }
}
