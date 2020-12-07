import 'package:flutter/material.dart';

class NewsCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
                  child: Column(
            children: <Widget>[
              Icon(Icons.flag),
              Text("Local News"),
            ],
          ),
        ),
        Expanded(
                  child: Column(
            children: <Widget>[
              Icon(Icons.gps_not_fixed),
              Text("Global News"),
            ],
          ),
        ),
        Expanded(
                  child: Column(
            children: <Widget>[
              Icon(Icons.gamepad),
              Text("Sports News"),
            ],
          ),
        ),
        Expanded(
                  child: Column(
            children: <Widget>[
              Icon(Icons.party_mode),
              Text("Entertainment News"),
            ],
          ),
        )
      ],
    );
  }
}
