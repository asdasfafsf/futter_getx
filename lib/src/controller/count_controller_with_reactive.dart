import 'package:get/get.dart';

enum NUM { FIRST, SECOND }


class User {
  late String name;
  late int age;

  User( {required this.name, required this.age});
}

class CountControllerWithReactive extends GetxController{
  RxInt count = 0.obs;
  RxDouble count2 = 0.0.obs;
  RxString value = "".obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User(name: 'asdsd', age: 30).obs;
  RxList<String> list = RxList<String>();

  void increase() {
    count++;
    count2.value = count2.value + 1.0;

    user.update((val) {
      val!.name = '반가워';
    });

    // list.addAll();
    // list.add();
    list.addIf(user.value.name == '반가워', 'okay');
  }

  void putNumber(int value) {
    count(value);
  }


  @override
  void onInit() {
    ever(count, (_) => print('매번 호출'));
    once(count, (_) => print('한번만 호출'));
    debounce(count, (_) => print('마지막 변경에 한번만 호출'), time: Duration(seconds: 1));
    interval(count, (_) => print('변경되고 있는 동안 1초마다 호출'), time: Duration(seconds: 1));

    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

mixin NUMS {
}