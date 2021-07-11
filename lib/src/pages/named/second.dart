
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second NamedPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () { 
                Get.back();
                //Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage()));
              },
              child: Text('뒤로이동'),
            ),RaisedButton(
              onPressed: () { 
                // Get.to(Home());
                Get.offAllNamed('/');
                //Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage()));
              },
              child: Text('홈으로이동'),
            ),
          ],
        )
      ),
    );
  }

  
}