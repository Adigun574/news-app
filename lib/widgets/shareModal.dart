import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShareModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 20,
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          height: 150,
          child: Column(children: <Widget>[
            SizedBox(
                height: 5,
                width: 100,
                child: const DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.black38,
                  ),
                )),
            SizedBox(height: 15),
            Text(
              "Share On",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                FaIcon(
                  FontAwesomeIcons.twitter,
                  size: 40,
                  color: new Color.fromRGBO(29, 161, 242, 1),
                ),
                FaIcon(
                  FontAwesomeIcons.facebook,
                  size: 40,
                  color: new Color.fromRGBO(46, 137, 255, 1),
                ),
                FaIcon(
                  FontAwesomeIcons.instagram,
                  size: 40,
                  color: new Color.fromRGBO(175, 48, 187, 1),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
