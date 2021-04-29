import 'package:flutter/material.dart';
import 'package:clone_picpay/pages/picpay.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone PicPay',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PicPayPage(),
    );
  }
}
