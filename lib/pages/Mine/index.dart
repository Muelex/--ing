import 'package:flutter/material.dart';

class Minepage extends StatefulWidget {
  const Minepage({super.key});

  @override
  State<Minepage> createState() => _MinepageState();
}

class _MinepageState extends State<Minepage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("我的"),
    );
  }
}