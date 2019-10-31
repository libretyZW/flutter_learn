import 'package:flutter/material.dart';

class StatusControlPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ControlStatus();
  }
}

class ControlStatus extends State<StatusControlPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("状态管理演示主页"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text('Widget自身管理状态'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "status_tap_a");
              },
            ),
            FlatButton(
              child: Text('父Widget管理状态'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "status_tap_b");
              },
            ),
            FlatButton(
              child: Text('混合管理Widget状态'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "status_tap_c");
              },
            ),
            FlatButton(
              child: Text('局部状态管理'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "inherited_test");
              },
            ),
            FlatButton(
              child: Text('Provider状态管理'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "first_counter_page");
              },
            ),
          ],
        ),
      ),
    );
  }
}
