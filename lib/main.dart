import 'package:corinder/main_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final String kboyText = "kboy";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(title: Text(kboyText),),
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: <Widget>[
                  Text(model.kboyText,),
                  ElevatedButton(
                    child: Text('Dボタン'),
                    onPressed: () {
                    model.changeKboyText();
                  },
                ),
              ],
            ),
          );
          })
        ),
      ),
    );
  }
}
