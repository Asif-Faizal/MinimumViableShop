import 'package:flutter/material.dart';
import 'package:mvs_shared_ui/components/product_tile.dart';
import 'package:go_router/go_router.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final products = List.generate(10, (i) => {'id': '$i', 'title': 'Product $i', 'price': '\$${(i + 1) * 10}'});
    return Scaffold(
      appBar: AppBar(title: const Text('Catalog')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final p = products[index];
          return ProductTile(
            title: p['title']!,
            price: p['price']!,
            onTap: () => context.go('/product/${p['id']}'),
          );
        },
      ),
    );
  }
}
