import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier{
  String kboyText = "kboy";

  void changeKboyText(){
    kboyText = ("ボタンクリック→changeKboyText読み込み→Consumer以降が再読み込み");
    notifyListeners();


  }


}