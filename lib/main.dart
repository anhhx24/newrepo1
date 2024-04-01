import 'package:employee/empdetails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp1());
}
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _MyAppState();
}

class _MyAppState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Mypage(),);
  }
}
class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: ElevatedButton(onPressed: () =>
    {

    },child: Text("emp"),
      ),),);
  }
}

