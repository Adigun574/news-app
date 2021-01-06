import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news/screens/NavigationDrawer.dart';
import 'package:news/screens/NewsPageScreen.dart';
import 'package:http/http.dart' as http;
import 'package:news/widgets/NewsCard.dart';
import 'package:news/widgets/NewsCategories.dart';

import 'TopNewsCardScreen.dart';

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
      print(newsStuff);
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
          : Text('loading'),
    );
  }
}
