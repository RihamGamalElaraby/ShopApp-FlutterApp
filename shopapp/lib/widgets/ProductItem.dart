import 'package:flutter/material.dart';
import 'package:shopapp/screens/productDetatilScreen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem(
      {super.key,
      required this.id,
      required this.title,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(ProductDetatilScreen.routeName, arguments: id);
            },
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          // header: Text(title),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Theme.of(context).primaryColor,
                )),
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Theme.of(context).primaryColor,
                )),
          ),
        ),
      ),
    );
  }
}
