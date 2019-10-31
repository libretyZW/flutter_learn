import 'package:flutter/material.dart';

import 'ShareDataWidget.dart';
import 'TestWidget.dart';

class InheritedTestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InheritedState();
  }
}

class InheritedState extends State<InheritedTestPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("InheritedWidget演示"),
        ),
        body: Center(
          child: ShareDataWidget(
            //使用ShareDataWidget
            data: count,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: TestWidget(), //子widget中依赖ShareDataWidget
                ),
                RaisedButton(
                  child: Text("Increment"),
                  //每点击一次，将count自增，然后重新build,ShareDataWidget的data将被更新
                  onPressed: () => setState(() => ++count),
                )
              ],
            ),
          ),
        ));
  }
}
