import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_samples/instagramClone/instagram_home.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  onButtonTap(Widget page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Samples'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            MyMenuButton(
              title: 'Push Notifications',
              actionTap: () {},
            ),
            MyMenuButton(
              title: 'Instagram Clone',
              actionTap: () {
                onButtonTap(
                  InstagramHome(),
                );
              },
            ),
            MyMenuButton(
              title: 'Instagram Clone',
              actionTap: () {},
            ),
            MyMenuButton(
              title: 'LinkedIn Clone',
              actionTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class MyMenuButton extends StatelessWidget {
  final String title;
  final VoidCallback actionTap;

  MyMenuButton({this.title, this.actionTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: MaterialButton(
        height: 50.0,
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        child: new Text(title),
        onPressed: actionTap,
      ),
    );
  }
}
