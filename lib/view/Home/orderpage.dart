import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isDeliveryDetailsCompleted = false;
  bool isPaymentCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Item List
            CartItem(name: 'item 1', quantity: 1, price: 150),
            CartItem(name: 'item 1', quantity: 1, price: 150),
            CartItem(name: 'item 1', quantity: 1, price: 150),

            SizedBox(height: 20),

            // Delivery Charges
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('delivery charge'),
                Text('\$5'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('delivery charge'),
                Text('\$50'),
              ],
            ),

            SizedBox(height: 20),

            // Total
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('\$505',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),

            SizedBox(height: 40),

            // Delivery Details Section with Straight Line and Tick
            _buildStepSection(
              title: 'deliver details',
              isCompleted: isDeliveryDetailsCompleted,
              onComplete: () {
                setState(() {
                  isDeliveryDetailsCompleted = true;
                });
              },
            ),

            SizedBox(height: 20),

            // Payment Section with Straight Line and Tick
            _buildStepSection(
              title: 'payment',
              isCompleted: isPaymentCompleted,
              onComplete: () {
                setState(() {
                  isPaymentCompleted = true;
                });
              },
            ),

            SizedBox(height: 40),

            // Order Now Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle order now
                },
                child: Text('order now >'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepSection({
    required String title,
    required bool isCompleted,
    required VoidCallback onComplete,
  }) {
    return GestureDetector(
      onTap: onComplete,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isCompleted ? Colors.green : Colors.black,
            ),
          ),
          SizedBox(height: 10),

          // Straight Line and Tick
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 2,
                  color: isCompleted ? Colors.green : Colors.grey,
                ),
              ),
              SizedBox(width: 10),
              if (isCompleted)
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String name;
  final int quantity;
  final int price;

  CartItem({required this.name, required this.quantity, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name),
            Text('$quantity +'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('\$$price'),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
