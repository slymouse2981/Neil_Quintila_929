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

















Parillo_929
#Finals

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header Section with Stack for overlap
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Cover Photo with city image from network
              Container(
                height: 200,
                width: double.infinity,
                // Replace color placeholder with image
                child: Image.network(
                  'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=1350&q=80', // Example city image URL
                  fit: BoxFit.cover,
                ),
              ),
              // Top Action Icons
              Positioned(
                top: 40,
                right: 10,
                child: Row(
                  children: const [
                    Icon(Icons.menu, color: Colors.white),
                    SizedBox(width: 15),
                    Icon(Icons.edit, color: Colors.white),
                    SizedBox(width: 15),
                    Icon(Icons.search, color: Colors.white),
                    SizedBox(width: 15),
                    Icon(Icons.more_horiz, color: Colors.white),
                  ],
                ),
              ),
              // Profile Picture (Overlapping)
              Positioned(
                bottom: -50,
                left: 20,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 46,
                    backgroundColor: Colors.blue[200], // Placeholder
                    child: const Icon(Icons.person, size: 50, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 60), // Space for profile picture overlap

          // Profile Info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("John Doe", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const Text("100 Posts | Iloilo City", style: TextStyle(color: Colors.grey)),

                const SizedBox(height: 15),

                // Action Buttons
                Row(
                  children: [
                    Expanded(child: ElevatedButton(onPressed: () {}, child: const Text("Add to story"))),
                    const SizedBox(width: 10),
                    Expanded(child: OutlinedButton(onPressed: () {}, child: const Text("Edit profile"))),
                  ],
                ),

                const SizedBox(height: 15),

                // Privacy Notice
                const Text("Your profile is private. Learn more.", style: TextStyle(color: Colors.blue)),

                const SizedBox(height: 20),

                // Profile Tabs
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("AI", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Photos"),
                    Text("Reels"),
                  ],
                ),
                const Divider(),

                // Personal Details Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Personal Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Icon(Icons.edit),
                  ],
                ),

                const SizedBox(height: 10),

                // Personal Info List
                ListTile(leading: const Icon(Icons.location_on), title: const Text("Iloilo City")),
                ListTile(leading: const Icon(Icons.home), title: const Text("123 Street, Iloilo City")),
                ListTile(leading: const Icon(Icons.cake), title: const Text("January 1, 1990")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
