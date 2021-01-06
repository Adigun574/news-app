import 'package:flutter/material.dart';

import 'NewsDetailScreen.dart';

class TopNewsCard extends StatelessWidget {
  final dynamic newsObj;

  TopNewsCard(this.newsObj);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NewsDetail(newsObj);
          }))
        },
        child: Card(
          color: Theme.of(context).primaryColor,
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                      // "PDP senatorial candidate, Gbadamosi wins polling unit The Peoples Democratic Party (PDP) ...",
                      newsObj['title'],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    flex: 2),
                Expanded(
                  // child: Image.network('https://picsum.photos/250?image=9',
                  child: Image.network(
                      newsObj['urlToImage'] is String
                          ? newsObj['urlToImage']
                          : '',
                      // child: Image.asset(
                      //   'assets/images/test_beer.PNG',
                      // width: 200,
                      // height: 400,
                      // fit: BoxFit.contain,
                      fit: BoxFit.cover,
                      height: 100
                      //   loadingBuilder: (context, child, progress) {
                      // return progress == null ? child : LinearProgressIndicator();
                      // }
                      ),
                  flex: 1,
                )
              ],
            ),
            padding: EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
