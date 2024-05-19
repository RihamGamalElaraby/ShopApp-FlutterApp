import 'package:flutter/material.dart';

class ProductDetatilScreen extends StatelessWidget {
  const ProductDetatilScreen({
    super.key,
  });
  // final String title;
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
          // title: Text(title),
          ),
    );
  }
}
