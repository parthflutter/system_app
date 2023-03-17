import 'package:flutter/cupertino.dart';

class Screen_provider extends ChangeNotifier
{

  bool a1 = true;
  bool a2 = false;
  bool a3 = true;

  void change1(bool s)
  {
  a1 = s;
  notifyListeners();
  }void change2(bool c)
  {
  a2 = c;
  notifyListeners();
  }
  void change3(bool b)
  {
  a3 = b;
  notifyListeners();

  }
}