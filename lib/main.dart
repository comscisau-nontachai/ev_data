import 'package:ev_data/constants.dart';
import 'package:ev_data/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ev Data',
      theme: ThemeData(primaryColor: kPrimaryColor, visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen(),
    );
  }
}
