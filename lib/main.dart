import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MmtCloneApp());
}

class MmtCloneApp extends StatelessWidget {
  const MmtCloneApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MakeMyTrip Clone',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => HomeScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Makemytrip_logo.png',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              "MakeMyTrip Clone",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
