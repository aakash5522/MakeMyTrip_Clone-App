import 'package:flutter/material.dart';

class FlightsScreen extends StatelessWidget {
  const FlightsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flights"), leading: BackButton()),
      body: Center(child: Text("Flights Page", style: TextStyle(fontSize: 28))),
    );
  }
}
