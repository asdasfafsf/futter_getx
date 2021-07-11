
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/src/pages/normal/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () { 
                //Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage()));
                Get.to(SecondPage());
              },
              child: Text('두번째 라우트'),
            )
          ],
        )
      ),
    );
  }

  
}