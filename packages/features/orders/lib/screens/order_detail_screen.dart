import 'package:flutter/material.dart';

class OrderDetailScreen extends StatelessWidget {
  final String id;
  const OrderDetailScreen({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order $id')),
      body: Center(child: Text('Details for $id')),
    );
  }
}
