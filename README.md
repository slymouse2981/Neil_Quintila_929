#firstwebsite_Quintila


#Finals

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Cover Photo & Header Stack
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                // Cover Photo Background (Color placeholder instead of network image)
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.grey[800],
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.menu, color: Colors.white),
                          Row(
                            children: [
                              Icon(Icons.edit, color: Colors.white),
                              SizedBox(width: 16),
                              Icon(Icons.search, color: Colors.white),
                              SizedBox(width: 16),
                              Icon(Icons.more_horiz, color: Colors.white),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Camera icon on cover photo
                Positioned(
                  bottom: 12,
                  right: 12,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      size: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
                // Overlapping Profile Picture (Using initials/icon placeholder instead of network image)
                Positioned(
                  bottom: -60,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 56,
                          backgroundColor: Colors.grey[300],
                          child: const Icon(
                            Icons.person,
                            size: 60,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            shape: BoxShape.circle,
                            border: Border


}
