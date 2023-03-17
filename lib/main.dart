import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:system_app/screen/provider/screen_provider.dart';
import 'package:system_app/screen/uisetting/view/i_setting_screen.dart';
import 'package:system_app/screen/view/ui.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Screen_provider(),),
    ],
    child: Platform.isIOS?android():ios(),

    ),
  );
}
Widget android()
{
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
  '/':(context) => ui_screen(),
    },
  );
}
Widget ios() {
  return CupertinoApp(
    theme: CupertinoThemeData(brightness: Brightness.light),
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (p0) => i_setting_screen(),
    },
  );
}
