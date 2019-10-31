import 'package:flutter/material.dart';
import 'package:flutter_app/localizations/LocalizationPage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'assetLoad/assetLoadPage.dart';
import 'home/homePage.dart';
import 'routeTest/RouteArgPage.dart';
import 'routeTest/RouteHomePage.dart';
import 'routeTest/RouteTablePage.dart';
import 'routeTest/RouteTestPage.dart';
import 'statusControl/StatusControlPage.dart';
import 'statusControl/TapBoxA.dart';
import 'statusControl/TapBoxB.dart';
import 'statusControl/TapBoxC.dart';
import 'statusControl/partShare/InheritedTestPage.dart';
import 'statusControl/provider/CounterModel.dart';
import 'statusControl/provider/FirstCounterPage.dart';
import 'widgetShow/ButtonShowPage.dart';
import 'widgetShow/TextShowPage.dart';
import 'widgetShow/WidgetShowPage.dart';
import 'widgetShow/scrollWidget/RefreshListViewPage.dart';

void main() {
  final counter = CounterModel();
  final textSize = 48;
  runApp(Provider.value(
    value: textSize,
    child: ChangeNotifierProvider.value(
      value: counter,
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,

      ],
////      /// 路由钩子回调跳转页面
//      onGenerateRoute: (RouteSettings settings) {
//        return MaterialPageRoute(builder: (context) {
//          var name = settings.name;
//          switch (name) {
//            case "route_home_page":
//              return RouteHomePage();
//            case "route_table_page":
//              return RouteTablePage();
//            case "route_arg_page":
//              return RouteArgPage();
//            case "route_test_page":
//              return RouteTestPage(
//                  // 导航适配路由
//                  text: ModalRoute.of(context).settings.arguments);
//            default:
//              return MyHomePage(title: 'Flutter Demo Home Page');
//          }
//        });
//      },
      routes: {
        /// 路由表单Map
        "route_home_page": (context) => RouteHomePage(),
        "route_table_page": (context) => RouteTablePage(),
        "route_arg_page": (context) => RouteArgPage(),
        "route_test_page": (context) {
          // 导航适配路由
          return RouteTestPage(text: ModalRoute.of(context).settings.arguments);
        },

        /// 资源加载
        "asset_load_page": (context) => AssetLoadPage(),

        /// 状态管理
        "status_control_page": (context) => StatusControlPage(),
        "status_tap_a": (context) => TapBoxA(),
        "status_tap_b": (context) => TapBoxBParent(),
        "status_tap_c": (context) => TapBoxCParent(),
        "inherited_test": (context) => InheritedTestPage(),
        "first_counter_page": (context) => FirstCounterPage(),

        /// 控件学习
        "widget_show_page": (context) => WidgetShowPage(),
        "text_show_page": (context) => TextShowPage(),
        "button_show_page": (context) => ButtonShowPage(),
        "list_view_page": (context) => RefreshListViewPage(),
        "localization_page": (context) => LocalizationPage(),
      },
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
