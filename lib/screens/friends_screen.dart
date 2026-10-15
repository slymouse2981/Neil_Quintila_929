import 'dart:html';
import 'package:flutter/material.dart';
import 'package:helloworld/components/globalappbar_component.dart';

class FriendScreen extends StatefulWidget {
  const FriendScreen({Key? key}) : super(key: key);

  @override
  State<FriendScreen> createState() => _FriendScreenState();
}

class _FriendScreenState extends State<FriendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),
      body: Center(
        child: Text("Friends Screen"),
      ),
    );
  }
}
