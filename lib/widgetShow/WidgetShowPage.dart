import 'package:flutter/material.dart';
import 'package:flutter_app/widgetShow/line/RowShowPage.dart';
import 'package:flutter_app/widgetShow/wrap/WrapShowPage.dart';

class WidgetShowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WidgetShowState();
  }
}

class WidgetShowState extends State<WidgetShowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget控件演示主页"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FlatButton(
              child: Text("Text样式演示"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "text_show_page");
              },
            ),
            FlatButton(
              child: Text("Button样式演示"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "button_show_page");
              },
            ),
            FlatButton(
              child: Text("线性布局样式演示"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RowShowPage();
                }));
              },
            ),
            FlatButton(
              child: Text("流式布局样式演示"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WrapShowPage();
                }));
              },
            ),
            FlatButton(
              child: Text("ListView样式演示"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "list_view_page");
              },
            ),
          ],
        ),
      ),
    );
  }
}
