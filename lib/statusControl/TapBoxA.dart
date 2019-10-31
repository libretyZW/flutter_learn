import 'package:flutter/material.dart';

class TapBoxA extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TapBoxAStatus();
  }
}

class TapBoxAStatus extends State<TapBoxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget自身管理状态"),
      ),
      body: GestureDetector(
        onTap: _handleTap,
        child: Container(
          child: Center(
            child: Text(
              _active ? "active" : "inactive",
              style: TextStyle(fontSize: 32.0, color: Colors.white),
            ),
          ),
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: _active ? Colors.lightGreen[700] : Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
