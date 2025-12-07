import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(title: Text('Address'), subtitle: Text('Enter shipping address')),
          Divider(),
          ListTile(title: Text('Order Summary'), subtitle: Text('Review items')),
          Divider(),
          ListTile(title: Text('Payment'), subtitle: Text('Fake payment step')),
        ],
      ),
    );
  }
}
