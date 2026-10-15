import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: PrelimScreen()));

class PrelimScreen extends StatefulWidget {
  const PrelimScreen({super.key});

  @override
  State<PrelimScreen> createState() => _PrelimScreenState();
}

class _PrelimScreenState extends State<PrelimScreen> {
  @override
  Widget build(BuildContext context) {
    Widget box(String label) => Container(
          width: 150,
          height: 150,
          color: Colors.lightBlue,
          alignment: Alignment.center,
          child: Text(label),
        );

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Prelim Exam',
                style: TextStyle(color: Colors.lightBlue, fontSize: 18)),
            const SizedBox(height: 10),
            const Text('Neil Lawrence A. Quintila',
                style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            box('BOX 1'),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [box('BOX 2'), const SizedBox(width: 15), box('BOX 3')],
            ),
          ],
        ),
      ),
    );
  }
}
