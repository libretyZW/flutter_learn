import 'package:flutter/material.dart';

import 'RouteTestPage.dart';

class RouteHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RouteHomeStatus();
  }
}

class RouteHomeStatus extends State<RouteHomePage> {
  int _counter = 0;
  String _tip = "You have pushed the button this many times:";

  void _incrementCounter() {
    setState(() {
      _tip = "You have pushed the button this many times:";
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("路由演示主页"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(_tip),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text('open Route Test Page'),
              textColor: Colors.blue,
              onPressed: () async {
                /// 路由跳转，新页面widget入栈
                /// 参数传递方式1
                var result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return RouteTestPage(
                    text: "周末撸串",
                  );
                }));

//                /// 适配路由表单跳转，新页面widget入栈，携带参数
//                var result = await Navigator.pushNamed(context,"route_test_page",arguments: "表单，周末撸串");

                /// 路由返回值
                if (result != null) {
                  setState(() {
                    _tip = "set count number from RouteTestPage :";
                    _counter = result;
                  });
                }
              },
            ),
            FlatButton(
              child: Text('open Route Table Page'),
              textColor: Colors.blue,
              onPressed: () async {
                /// 路由跳转，新页面widget入栈，使用路由表
                var result =
                    await Navigator.pushNamed(context, "route_table_page");

                /// 路由返回值
                if (result != null) {
                  setState(() {
                    _tip = "set count number from RouteTablePage :";
                    _counter = result;
                  });
                }
              },
            ),
            FlatButton(
              child: Text('open Route Arg Page'),
              textColor: Colors.blue,
              onPressed: () async {
                /// 路由跳转，新页面widget入栈，使用路由表，携带参数
                /// 参数传递方式2
                var result = await Navigator.pushNamed(
                    context, "route_arg_page",
                    arguments: 'hahahaha');

                /// 路由返回值
                if (result != null) {
                  setState(() {
                    _tip = "set count number from RouteArgPage :";
                    _counter = result;
                  });
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
