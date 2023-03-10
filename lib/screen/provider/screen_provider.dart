import 'package:flutter/cupertino.dart';

class Screen_provider extends ChangeNotifier
{

  bool onOff = false;
  bool onOff2 = false;
  bool onOff3 = false;

  void onClick(bool value)
  {
  onOff = value;
  notifyListeners();
  }
  void onClick2(bool value)
  {
  onOff2 = value;
  notifyListeners();
  }

  void onClick3(bool value)
  {
  onOff3 = value;
  notifyListeners();
  }
}
