import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news/screens/NavigationDrawer.dart';
import 'package:news/screens/NewsPageScreen.dart';
import 'package:http/http.dart' as http;
import 'package:news/widgets/NewsCard.dart';
import 'package:news/widgets/NewsCategories.dart';

import 'TopNewsCardScreen.dart';

import 'package:skeleton_text/skeleton_text.dart';

class News {
  final String author;
  final String imgUrl;
  final String date;
  final String description;
  final String title;

  News({this.author, this.imgUrl, this.date, this.description, this.title});

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      author: json['author'],
      imgUrl: json['urlToImage'],
      title: json['title'],
    );
  }
}

class LocalNewsScreen extends StatefulWidget {
  static const routeName = "/localnews";

  @override
  _LocalNewsScreenState createState() => _LocalNewsScreenState();
}

class _LocalNewsScreenState extends State<LocalNewsScreen> {
  List<dynamic> _newsStuff = [];

  Future<void> fetchNews() async {
    try {
      final response = await http.get(
          'https://newsapi.org/v2/top-headlines?country=ng&apiKey=3bcb03f913724a5b93bea54e181be4d9');
      final responseBody = json.decode(response.body);
      final news = responseBody['articles'];
      final List<dynamic> newsStuff = List<dynamic>.from(news as Iterable);
      setState(() => this._newsStuff = newsStuff);
      // print(newsStuff);
      return newsStuff;
    } catch (err) {
      // print('error occured during http request');
      print(err);
    }
  }

  var newsArray = [];

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Local News",
        style: TextStyle(color: Colors.white),
      )),
      drawer: NavigationDrawer(),
      // body: NewsPageScreen(),
      body: _newsStuff.length > 0
          ? Column(
              children: <Widget>[
                Card(
                  child: TopNewsCard(_newsStuff[0]),
                ),
                Divider(),
                NewsCategory(),
                Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: _newsStuff.length,
                    itemBuilder: (ctx, i) => NewsCard(_newsStuff[i]),
                  ),
                ),
              ],
            )
          : ListView.builder(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white70),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SkeletonAnimation(
                            child: Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, bottom: 5.0),
                                child: SkeletonAnimation(
                                  child: Container(
                                    height: 15,
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        color: Colors.grey[300]),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: SkeletonAnimation(
                                    child: Container(
                                      width: 60,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Colors.grey[300]),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
    );
  }
}
