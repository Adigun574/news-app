import 'package:flutter/material.dart';
import 'package:news/screens/NewsDetailScreen.dart';
import 'package:news/widgets/pictureModal.dart';
import 'package:news/widgets/shareModal.dart';

class NewsCard extends StatelessWidget {
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
                  Text("Lorem ipsum dolor sit amei lorem ipsum dolor"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("02/02/20"),
                      GestureDetector(
                        child: Icon(Icons.share),
                        // onTap: () => print("share clicked"),
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
