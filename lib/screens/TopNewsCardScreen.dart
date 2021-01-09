import 'package:flutter/material.dart';
import 'package:news/widgets/pictureModal.dart';

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
                      newsObj['title'],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    flex: 2),
                Expanded(
                  // child: Image.network('https://picsum.photos/250?image=9',
                  child: GestureDetector(
                    onTap: () => {
                      showBottomSheet(
                        context: context,
                        builder: (context) => PictureModal(
                          newsObj['urlToImage'] is String
                              ? newsObj['urlToImage']
                              : 'https://images.pexels.com/photos/3944454/pexels-photo-3944454.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        ),
                      )
                    },
                    child: Image.network(
                        newsObj['urlToImage'] is String
                            ? newsObj['urlToImage']
                            : '',
                        fit: BoxFit.cover,
                        height: 100),
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
