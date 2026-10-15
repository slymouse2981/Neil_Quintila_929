import 'package:flutter/material.dart';
import 'package:helloworld/components/globalappbar_component.dart';
import 'package:helloworld/components/newsfeedcomponent.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {
  final List<Map<String, String>> newsfeed = [
    {
      "username": "John Doe",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
      "timeposted": "5 hours ago",
    },
    {
      "username": "Jane Smith",
      "status": "Learning Flutter is fun!",
      "likes": "250",
      "comments": "40",
      "shares": "15",
      "timeposted": "6 hours ago"
    },
    {
      "username": "Michael Cruz",
      "status": "Working on my new project.",
      "likes": "89",
      "comments": "12",
      "shares": "4",
      "timeposted": "8 hours ago"
    },
    {
      "username": "Alex Santos",
      "status": "Flutter development today!",
      "likes": "300",
      "comments": "50",
      "shares": "20",
      "timeposted": "4 hours ago"
    },
    {
      "username": "Nel Madela",
      "status": "Flutter development today!",
      "likes": "300",
      "comments": "50",
      "shares": "20",
      "timeposted": "4 hours ago"
    },
    {
      "username": "Dexter Borne",
      "status": "Flutter development today!",
      "likes": "300",
      "comments": "50",
      "shares": "20",
      "timeposted": "3 hours ago"
    },
    {
      "username": "John Mason",
      "status": "Flutter development today!",
      "likes": "300",
      "comments": "50",
      "shares": "20",
      "timeposted": "2 hours ago"
    },
    {
      "username": "Drew Boston",
      "status": "Flutter development today!",
      "likes": "300",
      "comments": "50",
      "shares": "20",
      "timeposted": "2 hours ago"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: newsfeed.length,
        itemBuilder: (context, index) {
          final post = newsfeed[index];

          return Newsfeedcomponent(
            username: post["username"],
            status: post["status"],
            numberoflikes: post["likes"],
            numberofcomments: post["comments"],
            numberofshares: post["shares"],
            timeposted: post["timeposted"],
          );
        },
      ),
    );
  }
}
