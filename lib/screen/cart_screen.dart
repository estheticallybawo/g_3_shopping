import 'package:flutter/material.dart';
import 'package:g_3_shopping/constants.dart';
import 'package:g_3_shopping/screen/item_model.dart';
import 'package:g_3_shopping/screen/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
        backgroundColor: primaryColor),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) => ItemWidget(item: Item(name: "name", price: 100, color: primaryColor),),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
            onPressed: () {},
            child: Text("Buy: 100\$"),
          ),
          const SizedBox(height: 20,),
        ],
      ),
      );
  }
}
