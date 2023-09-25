import 'package:get/get.dart';
import 'ctr_screen_one.dart';

class ScreenOneBind extends Bindings {
  void dependencies() {
    Get.put(ControllerScreenOne());
  }
}