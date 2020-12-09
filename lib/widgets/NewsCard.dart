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
          SizedBox(width: 10),
          Expanded(
            child: (Column(
              children: <Widget>[
                Text("Lorem ipsum dolor sit amei lorem ipsum dolor"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("02/02/20"),
                    Icon(Icons.share),
                  ],
                )
              ],
            )),
            flex: 3,
          )
        ],
      ),
    );
  }
}
