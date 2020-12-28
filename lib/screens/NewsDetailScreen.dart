import 'package:flutter/material.dart';
import 'package:news/screens/NavigationDrawer.dart';

class NewsDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vanguard"),
      ),
      drawer: NavigationDrawer(),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                "North is ready for Restructuring – Ango Abdullahi",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                height: 30,
                thickness: 2,
              ),
              Container(
                child: Card(
                  child: Image.asset(
                    'assets/images/test_beer.PNG',
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  elevation: 10,
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
                "Professor Ango Abdullahi, former vice-chancellor of the Ahmadu Bello University, ABU, Zaria, and currently the convener, Northern Elders Forum NEF has been very vociferous in his calls for a change of tactics in respect of administering the country.",
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
                    "Author: Nwafor",
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

// {"status":"ok","totalResults":38,"articles":[{"source":{"id":null,"name":"Vanguard"},
// "author":"Nwafor","title":"North is ready for Restructuring – Ango Abdullahi - Vanguard",
// "description":"Professor Ango Abdullahi, former vice-chancellor of the Ahmadu Bello University, ABU, Zaria, and currently the convener,
// Northern Elders Forum NEF has been very vociferous in his calls for a change of tactics in respect
//  of administering the country.","url":"https://www.vanguardngr.com/2020/12/north-is-ready-for-restructuring-ango-abdullahi/","urlToImage":
//  "https://i0.wp.com/www.vanguardngr.com/wp-content/uploads/2013/05/Ango-Abdullahi.jpg?fit=412%2C265&ssl=1",
//  "publishedAt":"2020-12-28T06:16:00Z","content":"*Prof Ango Abdullahi\r\nWe must dismantle this Presidential system\r\nParliamentary system,
//  the solution to our unworkable federal structure\r\nWhere Nigeria went wrong\r\nProfessor Ango Abdullahi, former vi… [+19563 chars]"},
//  {"source":{"id":null,"name":"GSMArena.com"},"author":"Yordan","title":"My Top 5 phones of 2020: Yordan - GSMArena.com news - GSMArena.com",
//  "description":"The past 12 months brought some rather impressive smartphones.",
//  "url":"https://www.gsmarena.com/my_top_5_phones_of_2020__yordan-news-46877.php",
//  "urlToImage":"https://fdn.gsmarena.com/imgroot/news/20/12/top-phones-2020-yordan/-476x249w4/gsmarena_001.jpg","publishedAt":"2020-12-28T06:06:02Z",
//  "content":"The past year has been unusual for everyone, but at least the smartphone world kept going. We saw devices get released left and right,
//  the market battle remained as fierce as ever, and it became hard… [+4436 chars]"},
