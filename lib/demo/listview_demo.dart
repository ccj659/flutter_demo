import 'package:flutter/material.dart';
import './post_show.dart';
import '../model/post.dart';
import 'detail.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: <Widget>[

              Text(
                posts[index].id,
              ),
              Text(
                  posts[index].airport,
              ),
              Text(
                  posts[index].plan,
              ),
              Text(
                  posts[index].real,

              ),
              Text(
                  posts[index].status,
              ),
              Text(
                  posts[index].position,
              ),

              SizedBox(height: 16.0),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DetailDemo(post: posts[index]))
                  );
                }
              ),
            ),
          ),
        ],
      ),
    );
  }
    
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      );
    }
}