import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/src/pages/normal/first.dart';
import 'package:getx1/src/pages/simple_state_manage_page.dart';

import 'pages/reactive_state_manage_page copy.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('라우트 관리 홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () { 
                //Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage()));
                Get.to(FirstPage());
              },
              child: Text('일반적인 라우트'),
            ),
            RaisedButton(
              onPressed: () { 
                //Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage()));
                Get.toNamed('/first');
              },
              child: Text('Named 라우트'),
            ),
            RaisedButton(
              onPressed: () { 
                //Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage()));
                Get.toNamed(
                  '/next', 
                  arguments: User(name:'Wonkeun', age: 18),
                );
              },
              child: Text('argument 전달'),
            ),
            RaisedButton(
              onPressed: () { 
                //Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage()));
                Get.toNamed(
                  '/user/28357?name=개남&age=18', 
                );
              },
              child: Text('argument 전달'),
            ),
            RaisedButton(
              onPressed: () { 
                //Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage()));
                Get.to(SimpleStateManagePage());
              },
              child: Text('단순상태관리'),
            ),
            RaisedButton(
              onPressed: () { 
                //Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage()));
                Get.to(ReactiveStateManagePage());
              },
              child: Text('반응형 상태관리'),
            ),
          ],
        )
      ),
    );
  }
}

class User {
  late String name;
  late int age;

  User({required this.name, required this.age});
}