import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String title;
  final String price;
  final VoidCallback onTap;
  const ProductTile({super.key, required this.title, required this.price, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(title), subtitle: Text(price), onTap: onTap);
  }
}
