import 'package:flutter/material.dart';
import 'package:news/screens/NewsDetailScreen.dart';
import 'package:news/widgets/pictureModal.dart';
import 'package:news/widgets/shareModal.dart';
import 'package:intl/intl.dart';

class News {
  final dynamic news;

  News(this.news);
}

class NewsCard extends StatelessWidget {
  final dynamic newsObj;

  NewsCard(this.newsObj);

  handleFormatDate(date) {
    return date;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => print("card clicked"),
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsDetail();
        }))
      },
      child: Card(
        child: Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                  // child: Image.network('https://picsum.photos/250?image=9'),
                  // child: Image.network(newsObj['urlToImage']),
                  child: Image.asset(
                    'assets/images/test_beer.PNG',
                  ),
                  onTap: () => {
                        // print("image clicked"),
                        showBottomSheet(
                          context: context,
                          builder: (context) => PictureModal(),
                        )
                      }),
              flex: 1,
            ),
            SizedBox(width: 10),
            Expanded(
              child: (Column(
                children: <Widget>[
                  // Text("Lorem ipsum dolor sit amei lorem ipsum dolor"),
                  Text(newsObj['title']),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Text("02/02/20"),
                      Text(newsObj['publishedAt']),
                      // Text(DateFormat().format(newsObj['publishedAt'])),
                      GestureDetector(
                        child: Icon(Icons.share),
                        onTap: () {
                          showBottomSheet(
                              context: context,
                              builder: (context) => ShareModal());
                        },
                      ),
                    ],
                  ),
                ],
              )),
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
