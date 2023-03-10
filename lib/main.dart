import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:system_app/screen/provider/screen_provider.dart';
import 'package:system_app/screen/view/ui.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Screen_provider(),),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context)=>ui_screen(),
      },
    ),
  ),
  );
}