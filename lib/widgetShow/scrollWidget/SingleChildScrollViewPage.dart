import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("SingleChildScrollView"),
      ),
      body: SingleChildScrollView(),
    );
  }
}
