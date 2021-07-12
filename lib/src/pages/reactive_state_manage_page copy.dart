


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/src/controller/count_controller_with_getx.dart';
import 'package:getx1/src/controller/count_controller_with_provider.dart';
import 'package:getx1/src/controller/count_controller_with_reactive.dart';
import 'package:provider/provider.dart';

import 'state/with_getx.dart';
import 'state/with_provider.dart';


class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());


    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('GetX'),
            // GetX(
            //   builder: (_) {
            //     return Text(
            //       '${Get.find<CountControllerWithReactive>().count.value}',
            //       style: TextStyle(
            //         fontSize : 20,
            //       ),
            //     );
            // }),
            Obx(() {
              return Text(
                  '${Get.find<CountControllerWithReactive>().count.value}',
                  style: TextStyle(
                    fontSize : 50,
                  ),
                );
              }
            ),
            Text(
              '0'
            ),
            RaisedButton(
              child: Text(
                '+'
              ),
              onPressed: () => {
                Get.find<CountControllerWithReactive>().increase()
              }
            ),
            RaisedButton(
              child: Text(
                '5로 변경'
              ),
              onPressed: () => {
                Get.find<CountControllerWithReactive>().putNumber(5)
              }
            ),
          ],
        )
      ),
    );
  }

}