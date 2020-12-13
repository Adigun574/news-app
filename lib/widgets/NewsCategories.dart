import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewsCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.mapMarkerAlt,
              ),
              Text("Local News"),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.globeAmericas,
              ),
              Text("Global News"),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.footballBall,
              ),
              Text("Sports News"),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.film,
              ),
              Text("Entertainment News"),
            ],
          ),
        )
      ],
    );
  }
}
