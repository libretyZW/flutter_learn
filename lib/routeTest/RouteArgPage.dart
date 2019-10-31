import 'package:flutter/material.dart';

class RouteArgPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Arg Page'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  'This is a new Page, create from Home Page, \nuse Route Table, with arguments: $arguments'),
              FlatButton(
                child: Text('Back to Home, set Count 40'),
                textColor: Colors.deepOrange,

                /// 路由跳转，当前页面widget出栈，附带返回值给上一个页面
                onPressed: () => Navigator.pop(context, 40),
              )
            ]),
      ),
    );
  }
}
