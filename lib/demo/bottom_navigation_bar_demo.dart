import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget{






  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarDemo();
  }}

class _BottomNavigationBarDemo extends State<BottomNavigationBarDemo>{


  var _currentIndex=0;

  void _ontabHandler(int index){
    _currentIndex=index;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return            BottomNavigationBar(type: BottomNavigationBarType.fixed,
    currentIndex: _currentIndex,
    onTap: _ontabHandler,
    items: [
    BottomNavigationBarItem(
    icon: Icon(Icons.flight),
    title: Text("航班查询"),
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.filter_drama),
    title: Text("气象信息"),
    ),
    //  BottomNavigationBarItem(icon: Icon(Icons.card_travel),title:Text("数据分析"),),
    //BottomNavigationBarItem(icon: Icon(Icons.my_location),title:Text("飞行区监控"),),
    BottomNavigationBarItem(
    icon: Icon(Icons.person),
    title: Text("我的"),
    ),
    ]);
  }
}