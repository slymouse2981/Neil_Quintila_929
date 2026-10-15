import 'dart:html';
import 'package:flutter/material.dart';

import 'package:helloworld/components/globalappbar_component.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),
      body: Center(
        child: Text("Profile Screen"),
      ),
    );
  }
}
