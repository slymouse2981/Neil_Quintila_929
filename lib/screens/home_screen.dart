import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Hello World",
            style: TextStyle(color: Colors.blue),
          ),
          SizedBox(
            height: 50,
          ),
          Text("Hey Yow"),
          Row(
            children: [
              Text("Hello World"),
              SizedBox(
                width: 50,
              ),
              Text("Hey Yow"),
            ],
          ),
          Container(
            height: 250,
            width: 250,
            color: Colors.amber,
            child: Center(child: Text("Hello World")),
          ),
        ],
      ),
    );
  }
}
