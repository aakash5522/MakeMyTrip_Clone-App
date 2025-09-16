import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  final String type;
  const SearchTab({required this.type, super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(labelText: 'From'),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: TextFormField(decoration: InputDecoration(labelText: 'To')),
          ),
          SizedBox(width: 8),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Date'),
            ),
          ),
        ],
      ),
    );
  }
}
