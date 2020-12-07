import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Image.network('https://picsum.photos/250?image=9'),
            flex: 1,
          ),
          Expanded(
            child: Text("Lorem ipsum dolor sit amei lorem ipsum dolor"),
            flex: 3,
          )
        ],
      ),
    );
  }
}
