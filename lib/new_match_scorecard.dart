import 'package:flutter/material.dart';

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
  final TextEditingController POTMController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cricket Scorecard Input',
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28,
        color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 89, 204, 220),
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
                labelText: 'Top Batsmen with score(comma-separated)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: topBowlersController,
              decoration: const InputDecoration(
                labelText: 'Top Bowlers with figures(comma-separated)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: POTMController,
              decoration: const InputDecoration(
                labelText: 'Player Of The Match',
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
              'Player of the match:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(POTMController.text),
          ],
        ),
      ),
    );
  }
}