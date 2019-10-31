import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'CounterModel.dart';
import 'SecondCounterPage.dart';

class FirstCounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counter = Provider.of<CounterModel>(context);
    final textSize = Provider.of<int>(context).toDouble();

    return Scaffold(
      appBar: AppBar(
        title: Text('FirstPage'),
      ),
      body: Center(
        child: Text(
          'Value: ${_counter.value}',
          style: TextStyle(fontSize: textSize),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SecondCounterPage())),
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
