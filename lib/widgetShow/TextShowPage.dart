import 'package:flutter/material.dart';

class TextShowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Text演示页面"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello Word !",
              textAlign: TextAlign.left,
            ),
            // 文字靠左对齐，但因为Text文本内容宽度不足一行，Text的宽度和文本内容长度相等，
            // 那么这时指定对齐方式是没有意义的，只有Text宽度大于文本内容长度时指定此属性才有意义。
            Text(
              "Hello Word !" * 16,
              textAlign: TextAlign.center,
            ),
            // 文字居中显示

            Text(
              "Hello Word !" * 14,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            // 文字重复显示4次，最多1行，文字截断方式为结尾处隐藏
            Text(
              "Hello Word !",
              textScaleFactor: 1.5,
            ),
            // 文字大小为基准的1.5倍

            Text(
              "Hello Word !",
              style: TextStyle(
                  color: Colors.cyanAccent,
                  fontSize: 18.0,
                  height: 1.2,
                  // real_height = fontSize * height
                  fontFamily: "Courier",
                  // 字体集
                  background: new Paint()..color = Colors.yellow,
                  decoration: TextDecoration.lineThrough,
                  decorationStyle: TextDecorationStyle.dashed),
            ),

            Text.rich(TextSpan(children: [
              TextSpan(text: "Home:"),
              TextSpan(
                text: "www.baidu.com",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                ),
              )
            ])),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 20.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("hello world"),
                      Text("I am Jack"),
                      Text(
                        "I am Jack",
                        style: TextStyle(
                            inherit: false, //2.不继承默认样式
                            color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
