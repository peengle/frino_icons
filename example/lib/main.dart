import 'package:flutter/material.dart';
import 'frino_icon_map.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Frino Icons Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.count(
          crossAxisCount: 6,
          children: _generateIconTiles(),
        ));
  }

  List<Widget> _generateIconTiles() {
    List<Widget> tiles = [];
    FRINO_ICON_MAP.forEach((name, iconData) {
      tiles.add(GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FrinoIconInfo(name: name, iconData: iconData))),
        child: Icon(iconData),
      ));
    });
    return tiles;
  }
}

class FrinoIconInfo extends StatelessWidget {
  final String name;
  final IconData iconData;
  const FrinoIconInfo({super.key, required this.iconData, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),),
      body: Center(child: Icon(iconData, size: 200),),);
  }
}

