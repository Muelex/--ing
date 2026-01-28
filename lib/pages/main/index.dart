import 'package:flutter/material.dart';
import 'package:hm_shop/pages/Cart/index.dart';
import 'package:hm_shop/pages/Category/index.dart';
import 'package:hm_shop/pages/Home/index.dart';
import 'package:hm_shop/pages/Mine/index.dart';

class MianPage extends StatefulWidget {
  const MianPage({super.key});

  @override
  State<MianPage> createState() => _MianPageState();
}

class _MianPageState extends State<MianPage> {
  //定义数据 根据数据渲染4个导航
  final List<Map<String, String>> _tablist = [
    {
      "icon": "lib/assets/play.png", //显示图标
      "active_icon": "lib/assets/play.png", //激活图标
      "text": "首页", //文本
    },
    {
      "icon": "lib/assets/last.png",
      "active_icon": "lib/assets/last.png",
      "text": "分类",
    },
    {
      "icon": "lib/assets/next.png",
      "active_icon": "lib/assets/next.png",
      "text": "购物车",
    },
    {
      "icon": "lib/assets/pause.png",
      "active_icon": "lib/assets/pause.png",
      "text": "我的",
    },
  ];

  int _currentIndex = 0;

  List<BottomNavigationBarItem> _getTabBarWidget() {
    return List.generate(_tablist.length, (int index) {
      return BottomNavigationBarItem(
        icon: Image.asset(_tablist[index]["icon"]!, width: 30, height: 30),
        activeIcon: Image.asset(
          _tablist[index]["active_icon"]!,
          width: 30,
          height: 30,
        ),
        label: _tablist[index]["text"],
      );
    });
  }

  List<Widget> _getChildren() {
    return [
      HomePage(),
      CategoryPage(),
      CartPage(),
      Minepage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index:_currentIndex,
          children: _getChildren(),
        )),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        onTap: (int index) {
          _currentIndex = index;
          setState(() {});
        },
        currentIndex: _currentIndex,
        items: _getTabBarWidget(),
      ),
    );
  }
}
