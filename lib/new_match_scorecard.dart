import 'package:flutter/material.dart';

void main() {
  runApp(const CricbaseApp());
}

class CricbaseApp extends StatelessWidget {
  const CricbaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cricbase',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ScorecardPage(),
    );
  }
}

class ScorecardPage extends StatefulWidget {
  const ScorecardPage({super.key});

  @override
  _ScorecardPageState createState() => _ScorecardPageState();
}

class _ScorecardPageState extends State<ScorecardPage> {
  // Controllers to capture input
  final TextEditingController team1Controller = TextEditingController();
  final TextEditingController team2Controller = TextEditingController();
  final TextEditingController score1Controller = TextEditingController();
  final TextEditingController score2Controller = TextEditingController();
  final TextEditingController resultController = TextEditingController();
  final TextEditingController topBatsmenController = TextEditingController();
  final TextEditingController topBowlersController = TextEditingController();
  final TextEditingController fallOfWicketsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cricket Scorecard Input'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: team1Controller,
              decoration: const InputDecoration(
                labelText: 'Team 1',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: score1Controller,
              decoration: const InputDecoration(
                labelText: 'Score of Team 1',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: team2Controller,
              decoration: const InputDecoration(
                labelText: 'Team 2',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: score2Controller,
              decoration: const InputDecoration(
                labelText: 'Score of Team 2',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: resultController,
              decoration: const InputDecoration(
                labelText: 'Match Result',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: topBatsmenController,
              decoration: const InputDecoration(
                labelText: 'Top Batsmen (comma-separated)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: topBowlersController,
              decoration: const InputDecoration(
                labelText: 'Top Bowlers (comma-separated)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: fallOfWicketsController,
              decoration: const InputDecoration(
                labelText: 'Fall of Wickets',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // Update UI with new data
                });
              },
              child: const Text('Update Scorecard'),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
            // Display the input data in scorecard format
            Text(
              '${team1Controller.text} vs ${team2Controller.text}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '${team1Controller.text}: ${score1Controller.text}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              '${team2Controller.text}: ${score2Controller.text}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              resultController.text,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Divider(color: Colors.black),
            const SizedBox(height: 20),
            const Text(
              'Top Performers:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Batsmen:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(topBatsmenController.text),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Bowlers:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(topBowlersController.text),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(color: Colors.black),
            const SizedBox(height: 20),
            const Text(
              'Fall of Wickets:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(fallOfWicketsController.text),
          ],
        ),
      ),
    );
  }
}