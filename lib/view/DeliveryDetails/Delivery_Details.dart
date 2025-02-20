import 'package:fizzy/view/DeliveryDetails/Cart.dart';
import 'package:flutter/material.dart';

class DeliveryDetails extends StatelessWidget {
  const DeliveryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Cart(),
      ),
    );
  }
}
