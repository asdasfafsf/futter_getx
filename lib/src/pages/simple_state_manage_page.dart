


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/src/controller/count_controller_with_getx.dart';
import 'package:getx1/src/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

import 'state/with_getx.dart';
import 'state/with_provider.dart';


class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetx());


    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('+', style: TextStyle(fontSize: 30)),
            Expanded(
              child: WithGetX()
            ),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: WithProvider(),
              )
            ), 
          ],
        )
      ),
    );
  }

}