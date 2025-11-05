import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:g_3_shopping/screen/item_model.dart';
import 'package:g_3_shopping/screen/catalog_screen.dart';

class CartProvider extends ChangeNotifier {
  final List<Item> _cartItems = [];

  UnmodifiableListView<Item> get cartItems => UnmodifiableListView(_cartItems);

 
 
}