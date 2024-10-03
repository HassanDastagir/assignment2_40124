import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductTile({super.key, required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
      margin: const EdgeInsets.all(8),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        leading: ClipOval(
          child: Image.asset(
            product.image,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          product.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          '\$${product.price}',
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 16,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
