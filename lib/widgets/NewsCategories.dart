import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news/screens/GlobalNewsScreen.dart';
import 'package:news/screens/LocalNewsScreen.dart';

class NewsCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: () => Navigator.pushReplacementNamed(
                  context, LocalNewsScreen.routeName),
              child: Column(
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.mapMarkerAlt,
                    color: Colors.blue,
                  ),
                  Text(
                    "Local",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => Navigator.pushReplacementNamed(
                  context, GlobalNewsScreen.routeName),
              child: Column(
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.globeAmericas,
                    color: Colors.blue,
                  ),
                  Text(
                    "Global",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                FaIcon(
                  FontAwesomeIcons.footballBall,
                  color: Colors.blue,
                ),
                Text(
                  "Sports",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => {print("yes")},
              child: Column(
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.film,
                    color: Colors.blue,
                  ),
                  Text(
                    "Entertainment",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
