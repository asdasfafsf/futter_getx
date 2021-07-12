import 'package:get/get.dart';
import 'package:getx1/src/controller/count_controller_with_getx.dart';

class BindingPageBinding implements Bindings {
  @override
  void dependencies() {
    print('ㅇ연결1');
    Get.put(CountControllerWithGetx());
  }
  
}