import 'package:flutter/material.dart';
import 'package:flutter_app/demo/photo_selected.dart';
import 'package:flutter_app/demo/sliver_demo.dart';
import 'alert_dialog_demo.dart';
import 'dialog_demo.dart';
import 'listview_demo.dart';

import '../model/post.dart';

class DetailDemo extends StatelessWidget {
  final Post post;

  DetailDemo({
    @required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: AppBar(
            title: Text('当前航班：${post.id.substring(0, 6)}'),
            elevation: 0.0,
            bottom: TabBar(tabs: <Widget>[
              Tab(text: "超过保障时间\n25分钟"),
              Tab(text: "完成节点\n12个"),
            ]),
          ),
          body: TabBarView(children: <Widget>[
            ScrollDemo(),
            //SliverDemo(),
            SimpleScroll(),
          ]),
        ));
  }
}

class ScrollDemo extends StatelessWidget {
  ScrollDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  // A fixed-height child.
                  color: const Color(0xff808000), // Yellow
                  height: 120.0,
                ),
                Container(
                  // Another fixed-height child.
                  color: const Color(0xff008000), // Green
                  height: 120.0,
                ),
                Container(
                  // Another fixed-height child.
                  color: const Color(0xff808000), // Green
                  height: 120.0,
                ),
                Container(
                  // Another fixed-height child.
                  color: const Color(0xff008000), // Green
                  height: 120.0,
                ),
                Container(
                  // Another fixed-height child.
                  color: const Color(0xff808000), // Green
                  height: 120.0,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SimpleScroll extends StatelessWidget {


  void showMyMaterialDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return new AlertDialog(
            title: new Text("提示"),
            content: new Text("是否进行跳转？"),
            actions: <Widget>[
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                     Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SelectImage()),
                      );

                },
                child: new Text("确认"),
              ),
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text("取消"),
              ),
            ],
          );
        });
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new CustomScrollView(
      shrinkWrap: true,
      // 内容
      slivers: <Widget>[
        new SliverPadding(
          padding: const EdgeInsets.all(20.0),
          sliver: new SliverList(
            delegate: new SliverChildListDelegate(
              <Widget>[
                new Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  height: 40.0,
                  child: new RaisedButton(
                    onPressed: () {
                    /*  Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => _openAlertDialog),
                      );
                      */

                      showMyMaterialDialog(context);


                    },
                    onHighlightChanged: (bool b) {
                      print(b);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("12:04" +
                        "      |                                " +
                        "引导车到位                  "),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  height: 40.0,
                  child: new RaisedButton(
                    onPressed: () {},
                    onHighlightChanged: (bool b) {
                      print(b);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("12:04" +
                        "      |                                " +
                        "引导车到位                  "),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  height: 40.0,
                  child: new RaisedButton(
                    onPressed: () {},
                    onHighlightChanged: (bool b) {
                      print(b);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("12:04" +
                        "      |                                " +
                        "引导车到位                  "),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  height: 40.0,
                  child: new RaisedButton(
                    onPressed: () {},
                    onHighlightChanged: (bool b) {
                      print(b);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("12:04" +
                        "      |                                " +
                        "引导车到位                  "),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  height: 40.0,
                  child: new RaisedButton(
                    onPressed: () {},
                    onHighlightChanged: (bool b) {
                      print(b);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("12:04" +
                        "      |                                " +
                        "引导车到位                  "),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  height: 40.0,
                  child: new RaisedButton(
                    onPressed: () {},
                    onHighlightChanged: (bool b) {
                      print(b);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("12:04" +
                        "      |                                " +
                        "引导车到位                  "),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  height: 40.0,
                  child: new RaisedButton(
                    onPressed: () {},
                    onHighlightChanged: (bool b) {
                      print(b);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("12:04" +
                        "      |                                " +
                        "引导车到位                  "),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  height: 40.0,
                  child: new RaisedButton(
                    onPressed: () {},
                    onHighlightChanged: (bool b) {
                      print(b);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("12:04" +
                        "      |                                " +
                        "引导车到位                  "),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  height: 40.0,
                  child: new RaisedButton(
                    onPressed: () {},
                    onHighlightChanged: (bool b) {
                      print(b);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("12:04" +
                        "      |                                " +
                        "引导车到位                  "),
                  ),
                ),

                /* Container(
                    height: 60,
                    child: RaisedButton(

                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text("引导车到位"),
                    )，
*/

                /*     Row(
                    mainAxisSize:MainAxisSize.max ,
                    mainAxisAlignment:MainAxisAlignment.start ,
                    children: <Widget>[
//                      RaisedButton(
//                        color: Colors.green,
//                        textColor: Colors.white,
//                        child: Text("12:04"),
//                        onPressed:(){ print("点击了按钮");},
//                      ),
                    ,
                   // ],
                  ),
                ),*/

      /*          Container(
                  padding: EdgeInsets.all(0),
                  child: Material(
                    borderRadius: BorderRadius.circular(12.0),
                    elevation: 14.0,
                    color: Colors.blue,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text("12:04"),
                      onPressed: () {
                        print("点击了按钮");
                      },
                    ),

                    *//*        Row(
                        children: <Widget>[

                          RaisedButton(
                            color: Colors.green,
                            textColor: Colors.white,
                            child: Text("12:04"),
                            onPressed:(){ print("点击了按钮");},
                          ),


                        ],
                      ),*//*
                  ),
                )*/
              ],
            ),
          ),
        ),
      ],
    );
  }




}
