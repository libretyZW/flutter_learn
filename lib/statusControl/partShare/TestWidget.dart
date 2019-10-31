import 'package:flutter/material.dart';

import 'ShareDataWidget.dart';

class TestWidget extends StatefulWidget {
  @override
  TestWidgetState createState() => new TestWidgetState();
}

class TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    //使用InheritedWidget中的共享数据
    return Text(ShareDataWidget.of(context).data.toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //父或祖先widget中的InheritedWidget改变(updateShouldNotify返回true)时会被调用。
    //如果build中没有依赖InheritedWidget，则此回调不会被调用。
    print("Dependencies change");

    //应该在didChangeDependencies()中做什么？
    //一般来说，子widget很少会重写此方法，因为在依赖改变后framework也都会调用build()方法。
    // 但是，如果你需要在依赖改变后执行一些昂贵的操作，
    // 比如网络请求，这时最好的方式就是在此方法中执行，这样可以避免每次build()都执行这些昂贵操作。
  }
}
