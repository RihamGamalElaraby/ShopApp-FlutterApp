import 'package:flutter/material.dart';
import 'package:shopapp/models/product.dart';
import 'package:shopapp/widgets/productGrid.dart';

class ProductOverView extends StatelessWidget {
  ProductOverView({super.key});

  final List<Product> loadedProduct = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Shop',
          style: TextStyle(),
        ),
      ),
      body: ProductGrid(),
    );
  }
}
