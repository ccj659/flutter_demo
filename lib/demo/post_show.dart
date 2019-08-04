import 'package:flutter/material.dart';
import 'package:flutter_app/demo/listview_demo.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;

  PostShow({
    @required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.id}'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[

          Container(
            padding: EdgeInsets.all(32.0),
            width: double.infinity,
            child:   ListViewDemo(),
          ),
        ],
      ),
    );
  }
}