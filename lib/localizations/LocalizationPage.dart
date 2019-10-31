import 'package:flutter/material.dart';
import 'package:flutter_app/generated/i18n.dart';

class LocalizationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).localization_page_title),
      ),
      body: Center(
        child: Text(S.of(context).localization_page_hint),
      ),
    );
  }
}
