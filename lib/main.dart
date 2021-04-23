import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LearnFlutter(),
    );
  }
}

class LearnFlutter extends StatefulWidget {
  @override
  _LearnFlutterState createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('ListView Builder'),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Sahir Khan'),
              subtitle: Text('hey....'),
              trailing: IconButton(
                icon: Icon(Icons.phone, color: Colors.indigo),
                onPressed: () {},
              ),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('images/mt.jpg'),
              ),
            );
          }),
    );
  }
}
