import 'package:flutter/material.dart';

class RouteTestPage extends StatelessWidget {
  RouteTestPage({Key key, @required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Test Page'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  'This is a new Page, create from Home Page, get Message :$text'),
              FlatButton(
                child: Text('Back to Home, set Count 20'),
                textColor: Colors.deepOrange,

                /// 路由跳转，当前页面widget出栈，附带返回值给上一个页面
                onPressed: () => Navigator.pop(context, 20),
              )
            ]),
      ),
    );
  }
}
