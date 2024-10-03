import 'package:flutter/material.dart';
import 'screen/product_list_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'HD Store',
      home: ProductListScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
