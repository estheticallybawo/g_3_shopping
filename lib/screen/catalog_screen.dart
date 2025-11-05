import 'package:flutter/material.dart';
import 'package:g_3_shopping/constants.dart';
import 'package:g_3_shopping/screen/cart_screen.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text('Catalog'),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartScreen()),
            ),
            child: Icon(Icons.shopping_cart),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(color: primaryColor),
          ),
          title: Text('Bag'),
          subtitle: Text('10\$'),
          trailing: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
            onPressed: () {},
            child: Text('Add'),
          ),
        ),
      ),
    );
  }
}
