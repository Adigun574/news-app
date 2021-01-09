import 'package:flutter/material.dart';
import 'package:news/screens/NavigationDrawer.dart';

class NewsDetail extends StatelessWidget {
  final dynamic newsObj;
  NewsDetail(this.newsObj);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(newsObj['source']['name']),
      ),
      drawer: NavigationDrawer(),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                newsObj['title'],
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                height: 30,
                thickness: 2,
              ),
              Container(
                child: GestureDetector(
                  child: Card(
                    child:
                        // Image.asset(
                        //   'assets/images/test_beer.PNG',
                        Image.network(
                      newsObj['urlToImage'],
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    elevation: 10,
                  ),
                ),
                height: 150,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                newsObj['description'],
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Author: ${newsObj['author']}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
