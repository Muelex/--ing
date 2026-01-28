import 'package:flutter/material.dart';

class MianPage extends StatefulWidget {
  const MianPage({super.key});

  @override
  State<MianPage> createState() => _MianPageState();
}

class _MianPageState extends State<MianPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("主页"),
      ),
      body: Center(
        child: Text("主页"),
      ),
    );
  }
}