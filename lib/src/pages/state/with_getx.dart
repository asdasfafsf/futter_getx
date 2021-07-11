import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx1/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {

  const WithGetX({Key? key}) : super(key: key);

  Widget _button(String id) {
    return RaisedButton(
      child: Text('+'),
      onPressed: () {
        Get.find<CountControllerWithGetx>().increase(id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('GetX'),
          GetBuilder<CountControllerWithGetx>(
            id: 'first',
            builder: (controller) {
              return Text(
                '${controller.count}'
              );
            },
          ),
          GetBuilder<CountControllerWithGetx>(
            id: 'second',
            builder: (controller) {
              return Text(
                '${controller.count}'
              );
            },
          ),
          _button('first'),
          _button('second'),

        ],
      ),
    );
  }
}