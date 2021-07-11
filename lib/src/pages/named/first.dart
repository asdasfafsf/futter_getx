
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/src/pages/normal/second.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First NamedPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () { 
                //Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage()));
                Get.toNamed('/second');
              },
              child: Text('두번째 라우트'),
            )
          ],
        )
      ),
    );
  }

  
}