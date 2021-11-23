import 'package:flutter/material.dart';

import '../menu_model.dart';
import 'app_route.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('เมนู'),
                accountEmail: Text(''),
              ),
              ...MenuViewModel()
                  .items
                  .map((e) => ListTile(
                leading: Icon(
                  e.icon,
                  color: e.iconColor,
                ),
                title: Text(e.title),
                onTap: () {
                  e.onTap(context);
                },
              ))
                  .toList(),
              Spacer(),
            ]),
      ),
    );
  }

} //end
