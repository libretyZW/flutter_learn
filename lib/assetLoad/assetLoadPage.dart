import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class AssetLoadPage extends StatefulWidget {
  @override
  _AssetLoadPageState createState() => _AssetLoadPageState();
}

class _AssetLoadPageState extends State<AssetLoadPage> {
  String cityName = "";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    rootBundle.loadString("assets/data/china.json").then((value) {
      setState(() {
        cityName = value.substring(0, 100);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset Load Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(cityName),
            Image.asset("assets/images/icon_wan_android.png")
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
