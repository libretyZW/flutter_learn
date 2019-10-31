import 'package:flutter/material.dart';

class RouteTablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Table Page'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  'This is a new Page, create from Home Page, use Route Table'),
              FlatButton(
                child: Text('Back to Home, set Count 30'),
                textColor: Colors.deepOrange,

                /// 路由跳转，当前页面widget出栈，附带返回值给上一个页面
                onPressed: () => Navigator.pop(context, 30),
              )
            ]),
      ),
    );
  }
}
