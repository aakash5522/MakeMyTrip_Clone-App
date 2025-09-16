import 'package:flutter/material.dart';

class HotelsScreen extends StatelessWidget {
  const HotelsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hotels"), leading: BackButton()),
      body: Center(child: Text("Hotels Page", style: TextStyle(fontSize: 28))),
    );
  }
}
