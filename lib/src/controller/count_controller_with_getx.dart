import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountControllerWithGetx extends GetxController {
  static CountControllerWithGetx get to => Get.find();

  RxInt count = 0.obs;
  void increase(String id) {
    count++;
    update([id]);
  }

  void putNumber(String id, RxInt value) {
    count = value;
    update([id]);
  }
}