import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final String name, imagePath, price;
  const DestinationCard({
    required this.name,
    required this.imagePath,
    required this.price,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Card(
        elevation: 3,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.asset(
                imagePath,
                height: 70,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              price,
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
