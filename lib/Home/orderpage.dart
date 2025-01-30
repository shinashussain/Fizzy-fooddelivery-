import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  List<int> quantities = [1, 1, 1];
  final double itemPrice = 150;
  final double deliveryCharge1 = 5;
  final double deliveryCharge2 = 50;

  void updateQuantity(int index, int delta) {
    setState(() {
      quantities[index] = (quantities[index] + delta).clamp(1, 99);
    });
  }

  double calculateTotal() {
    double itemsTotal = quantities.fold(0, (sum, qty) => sum + qty * itemPrice);
    return itemsTotal + deliveryCharge1 + deliveryCharge2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Green vertical line
          Positioned(
            left: 28,
            top: 220, // Adjust this value to match your UI
            bottom: 120, // Adjust this value to match your UI
            child: Container(
              width: 2,
              color: Colors.green,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        ...List.generate(
                          quantities.length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'item ${index + 1}',
                                  style: const TextStyle(fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Row(
                                        children: [
                                          IconButton(
                                            icon: const Icon(Icons.remove,
                                                size: 16),
                                            onPressed: () =>
                                                updateQuantity(index, -1),
                                          ),
                                          Text('${quantities[index]}'),
                                          IconButton(
                                            icon:
                                                const Icon(Icons.add, size: 16),
                                            onPressed: () =>
                                                updateQuantity(index, 1),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Text(
                                      '₹ $itemPrice',
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('delivery charge'),
                            Text('₹ $deliveryCharge1'),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('delivery charge'),
                            Text('₹ $deliveryCharge2'),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Total',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '₹ ${calculateTotal()}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Custom Timeline Items
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      child: const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 24,
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('deliver details'),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(color: Colors.grey),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      child: const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 24,
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('payment'),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(color: Colors.grey),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text('order now >'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
