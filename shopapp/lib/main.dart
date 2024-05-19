import 'package:flutter/material.dart';
import 'package:shopapp/screens/productDetatilScreen.dart';
import 'package:shopapp/screens/productsOverView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        fontFamily: 'Lato',
        useMaterial3: true,
      ),
      home: ProductOverView(),
      routes: {ProductDetatilScreen.routeName: (CTX) => ProductDetatilScreen()},
    );
  }
}
