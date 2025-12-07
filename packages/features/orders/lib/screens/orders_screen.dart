import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final orders = List.generate(5, (i) => {'id': 'ORD-${1000 + i}', 'total': (i + 1) * 42.5});
    return Scaffold(
      appBar: AppBar(title: const Text('Orders')),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final o = orders[index];
          return ListTile(
            title: Text(o['id'] as String),
            subtitle: Text('\$${(o['total'] as double).toStringAsFixed(2)}'),
            onTap: () => Navigator.of(context).pushNamed('/orders/${o['id']}'),
          );
        },
      ),
    );
  }
}
