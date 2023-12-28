import 'package:flutter/material.dart';

import 'service.dart' as service;
import 'wash.dart' as wash;
import 'tire.dart' as tire;

void main() {
  runApp(MaterialApp(
    title: "Tab Bar",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Auto Prestige"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.bolt), text: "Service"),
            new Tab(icon: new Icon(Icons.wash), text: "Cuci"),
            new Tab(icon: new Icon(Icons.tire_repair), text: "Ganti Ban"),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          service.service(),
          wash.wash(),
          tire.tire()
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.black,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.bolt)),
            new Tab(icon: new Icon(Icons.wash)),
            new Tab(icon: new Icon(Icons.tire_repair)),
          ],
        ),
      ),
    );
  }
}
