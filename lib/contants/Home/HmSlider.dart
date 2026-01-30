import 'package:flutter/material.dart';

class HmSlider extends StatefulWidget {
  const HmSlider({super.key});

  @override
  State<HmSlider> createState() => _HmSliderState();
}

class _HmSliderState extends State<HmSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
      child: Container(
        color: Colors.blue,
        height: 200,
        alignment: Alignment.center,
        child: Text("轮播图", style: TextStyle(color: Colors.white, fontSize: 50)),
      ),
    );
  }
}
