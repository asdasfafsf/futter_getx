import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/src/controller/dependency_controller.dart';
import 'package:getx1/src/pages/dependencies/get_lazyput.dart';
import 'package:getx1/src/pages/dependencies/get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key:  key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('의존성 주입'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              /**
               * 만드는 시점에 생성됨
               */
              child: Text('GetPut'),
              onPressed: () {
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder((){
                    Get.put(DependencyController());
                  })
                );
              },
            ),
            RaisedButton(
              /**
               * 메모리에 접근할 때, 즉 컨트롤러에 접근하는 시점에 생성됨
               */
              child: Text('Get.lazyPut'), 
              onPressed: () {
                 Get.to(
                  GetLazyPut(),
                  binding: BindingsBuilder((){
                    Get.lazyPut(() => DependencyController());
                  })
                );               
              },
            ),
            RaisedButton(
              /**
               * put과 기본적으로 같음
               * 동기와 비동기의 차이만 있음.
               */
              child: Text('Get.putAsync'),
              onPressed: () {
                 Get.to(
                  GetPut(),
                  binding: BindingsBuilder((){
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(Duration(seconds: 5));
                      return DependencyController();
                    });
                  })
                );               
              },
            ),
            RaisedButton(
              /**
               * 싱글턴 방식이 아닌 컨트롤러 인스턴스가 여러개임.
               */
              child: Text('Get.create'),
              onPressed: () {
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder(() {
                    Get.create<DependencyController>(() => DependencyController());
                  })
                );
              },
            ),
          ],
        ),
      )
    );
  } 
}