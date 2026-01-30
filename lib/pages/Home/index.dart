import 'package:flutter/material.dart';
import 'package:hm_shop/contants/Home/HmCategory.dart';
import 'package:hm_shop/contants/Home/HmHot.dart';
import 'package:hm_shop/contants/Home/HmMoreList.dart';
import 'package:hm_shop/contants/Home/HmSlider.dart';
import 'package:hm_shop/contants/Home/HmSuggestion.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _getScorllChildren(){
    return [
      SliverToBoxAdapter(child: HmSlider(),),
      SliverToBoxAdapter(child: SizedBox(height: 10,)),
      SliverToBoxAdapter(child: HmCategory()),
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      SliverToBoxAdapter(child: HmSuggestion()),
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(child: HmHot()),
              SizedBox(width: 10),
              Expanded(child: HmHot()),
            ],
          ),
        )
      ),
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      HmMoreList()
    ];
  }
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: _getScorllChildren()
    );
  }
}
