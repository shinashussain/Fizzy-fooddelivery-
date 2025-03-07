import 'package:flutter/material.dart';

class AddressCategoryScreen extends StatefulWidget {
  @override
  _AddressCategoryScreenState createState() => _AddressCategoryScreenState();
}

class _AddressCategoryScreenState extends State<AddressCategoryScreen> {
  String selectedCategory = ''; // Stores the selected category

  void selectCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  Widget buildCategoryButton(String label, IconData icon) {
    bool isSelected = selectedCategory == label;

    return ElevatedButton.icon(
      onPressed: () => selectCategory(label),
      icon: Icon(
        icon,
        size: 14, // Adjust icon size
        color: isSelected ? Colors.white : Colors.grey[700],
      ),
      label: Text(
        label,
        style: TextStyle(fontSize: 12), // Adjust text size
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.blue : Colors.grey[200],
        foregroundColor: isSelected ? Colors.white : Colors.black,
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: 6), // Adjust padding
        minimumSize: Size(130, 32), // Width 70, Height 32
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Set border radius to 15
        ),
        elevation: isSelected ? 2 : 0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Address Category')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 15,
          children: [
            buildCategoryButton("Home", Icons.home),
            buildCategoryButton("Work", Icons.work),
            buildCategoryButton("Friends & Family", Icons.people),
            buildCategoryButton("Others", Icons.location_pin),
          ],
        ),
      ),
    );
  }
}
