import 'package:flutter/material.dart';
import 'package:news/screens/EntertainmentNewsScreen.dart';
import 'package:news/screens/GlobalNewsScreen.dart';
import 'package:news/screens/LocalNewsScreen.dart';
import 'package:news/screens/SportNewsScreen.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(title: Text("News")),
    //   body: Center(child: Text('My Page!')),
    //   drawer: Drawer(
    //     child: ListView(
    //       children: <Widget>[
    //         Card(
    //           child: ListTile(
    //             leading: FlutterLogo(),
    //             title: Text('One-line with leading widget'),
    //           ),
    //         ),
    //         SizedBox(
    //           height: 20,
    //         ),
    //         Card(
    //           child: ListTile(
    //             // leading: FlutterLogo(),
    //             leading: Icon(Icons.flag),
    //             title: Text('Local News'),
    //             onTap: () =>
    //                 // Navigator.of(context).pushNamed(LocalNewsScreen.routeName),
    //                 Navigator.pushReplacementNamed(context, LocalNewsScreen.routeName)
    //           ),
    //         ),
    //         Card(
    //           child: ListTile(
    //             leading: Icon(Icons.gps_not_fixed),
    //             title: Text('Global News'),
    //             onTap: () =>
    //                 Navigator.of(context).pushNamed(GlobalNewsScreen.routeName),
    //           ),
    //         ),
    //         Card(
    //           child: ListTile(
    //             leading: Icon(Icons.gamepad),
    //             title: Text('Sport News'),
    //           ),
    //         ),
    //         Card(
    //           child: ListTile(
    //             leading: Icon(Icons.party_mode),
    //             title: Text('Entertainment News'),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return Drawer(
      child: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('One-line with leading widget'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            child: ListTile(
              // leading: FlutterLogo(),
              leading: Icon(Icons.flag),
              title: Text('Local News'),
              onTap: () =>
                  // Navigator.of(context).pushNamed(LocalNewsScreen.routeName),
                  Navigator.pushReplacementNamed(
                      context, LocalNewsScreen.routeName),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.gps_not_fixed),
              title: Text('Global News'),
              onTap: () => Navigator.pushReplacementNamed(
                  context, GlobalNewsScreen.routeName),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.gamepad),
              title: Text('Sport News'),
              onTap: () => Navigator.pushReplacementNamed(
                  context, SportNewsScreen.routeName),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.party_mode),
              title: Text('Entertainment News'),
              onTap: () => Navigator.pushReplacementNamed(
                  context, EntertainmentNewsScreen.routeName),
            ),
          ),
        ],
      ),
    );
  }
}
