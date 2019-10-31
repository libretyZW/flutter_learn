import 'package:flutter/material.dart';

class TapBoxCParent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TapBoxCParentStatus();
  }
}

class TapBoxCParentStatus extends State<TapBoxCParent> {
  bool _active = false;

  void handleTapStatus(bool newStatus) {
    setState(() {
      _active = newStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("混合管理Widget状态"),
      ),
      body: TapBoxC(
        active: _active,
        onStatusChanged: handleTapStatus,
      ),
    );
  }
}

class TapBoxC extends StatefulWidget {
  TapBoxC({Key key, this.active: false, @required this.onStatusChanged})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onStatusChanged;

  @override
  State<StatefulWidget> createState() {
    return TapBoxCStatus();
  }
}

class TapBoxCStatus extends State<TapBoxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onStatusChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      // 处理按下事件
      onTapUp: _handleTapUp,
      // 处理抬起事件
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: new Container(
        child: new Center(
          child: new Text(widget.active ? 'Active' : 'Inactive',
              style: new TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
              ? new Border.all(
                  color: Colors.teal[700],
                  width: 10.0,
                )
              : null,
        ),
      ),
    );
  }
}
