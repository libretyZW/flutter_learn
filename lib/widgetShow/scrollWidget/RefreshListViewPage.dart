import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class RefreshListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RefreshListViewState();
  }
}

class RefreshListViewState extends State<RefreshListViewPage> {
  var _words = <String>[];

  @override
  void initState() {
    super.initState();
    onRefresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RefreshListViewPage"),
      ),
      body: RefreshIndicator(
        onRefresh: this.onRefresh,
        child: ListView.separated(
            itemBuilder: (context, index) {
              if (index < _words.length) {
                //显示单词列表项
                return ListTile(title: Text(_words[index]));
              } else {
                //不足100条，继续获取数据
                if (_words.length < 100) {
                  //获取数据
                  loadData();
                  //加载时显示loading
                  return Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: SizedBox(
                        width: 24.0,
                        height: 24.0,
                        child: CircularProgressIndicator(strokeWidth: 2.0)),
                  );
                } else {
                  //已经加载了100条数据，不再获取数据。
                  return Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "没有更多了",
                        style: TextStyle(color: Colors.grey),
                      ));
                }
              }
            },
            separatorBuilder: (context, index) => Divider(height: .0),
            itemCount: _words.length + 1), // 多一个条目显示加载中或者没有更多了视图
      ),
    );
  }

  Future onRefresh() {
    _words.clear();
    return Future.delayed(Duration(seconds: 1), () {
      Toast.show('数据已刷新', context);
      setState(() {
        _words.insertAll(
            _words.length,
            //每次生成20个单词
            generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      });
    });
  }

  void loadData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      Toast.show('数据已加载', context);
      setState(() {
        _words.insertAll(
            _words.length,
            //每次生成20个单词
            generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      });
    });
  }
}
