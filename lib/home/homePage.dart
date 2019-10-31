import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FlatButton(
              child: Text('路由管理演示'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "route_home_page");
              },
            ),
            FlatButton(
              child: Text('资源加载演示'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "asset_load_page");
              },
            ),
            FlatButton(
              child: Text('状态管理演示'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "status_control_page");
              },
            ),
            FlatButton(
              child: Text('Widget控件演示'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "widget_show_page");
              },
            ),
            FlatButton(
              child: Text('国际化演示'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "localization_page");
              },
            ),
          ],
        ),
      ),
    );
  }
}
