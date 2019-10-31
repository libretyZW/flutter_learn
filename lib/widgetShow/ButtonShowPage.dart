import 'package:flutter/material.dart';

class ButtonShowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ButtonShowStatus();
  }
}

class ButtonShowStatus extends State<ButtonShowPage> {
  String raisedButtonText = "RaisedButton normal";
  String flatButtonText = "FlatButton normal";
  String outlineButtonText = "OutlineButton normal";

  void handleRaisedButtonOnClick() {
    setState(() {
      if (raisedButtonText == "RaisedButton normal") {
        raisedButtonText = "RaisedButton active";
      } else {
        raisedButtonText = "RaisedButton normal";
      }
    });
  }

  void handleFlatButtonOnClick() {
    setState(() {
      if (flatButtonText == "FlatButton normal") {
        flatButtonText = "FlatButton active";
      } else {
        flatButtonText = "FlatButton normal";
      }
    });
  }

  void handleOutlineButtonOnClick() {
    setState(() {
      if (outlineButtonText == "OutlineButton normal") {
        outlineButtonText = "OutlineButton active";
      } else {
        outlineButtonText = "OutlineButton normal";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Button 演示页面"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              onPressed: () => handleRaisedButtonOnClick(),
              child: Text(raisedButtonText),
            ),
            FlatButton(
              child: Text(flatButtonText),
              onPressed: () => handleFlatButtonOnClick(),
            ),
            OutlineButton(
              child: Text(outlineButtonText),
              onPressed: () => handleOutlineButtonOnClick(),
            ),
            IconButton(icon: Icon(Icons.thumb_up), onPressed: () {}),
            RaisedButton.icon(
              onPressed: () => handleRaisedButtonOnClick(),
              label: Text(raisedButtonText),
              icon: Icon(Icons.send),
            ),
            FlatButton.icon(
              label: Text(flatButtonText),
              onPressed: () => handleFlatButtonOnClick(),
              icon: Icon(Icons.add),
            ),
            OutlineButton.icon(
              label: Text(outlineButtonText),
              onPressed: () => handleOutlineButtonOnClick(),
              icon: Icon(Icons.info),
            ),
            FlatButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              //指定按钮主题colorBrightness为Brightness.dark，这是为了保证按钮文字颜色为浅色
              splashColor: Colors.grey,
              child: Text("Flat Submit"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {},
            ),
            RaisedButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              //指定按钮主题colorBrightness为Brightness.dark，这是为了保证按钮文字颜色为浅色
              splashColor: Colors.grey,
              child: Text("Raised Submit"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
