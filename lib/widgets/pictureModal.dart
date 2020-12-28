import 'package:flutter/material.dart';

class PictureModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.blue[100],
      elevation: 8,
      child: Container(
        padding: EdgeInsets.all(4),
        height: 400,
        child: Image.asset(
          'assets/images/test_beer.PNG',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
