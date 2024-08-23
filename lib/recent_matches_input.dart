import 'package:flutter/material.dart';
import 'package:cricky/home_screen.dart';

class MatchInput extends StatelessWidget {
  const MatchInput({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: Scaffold(
        body: MatchDetailInputPage(),
      ),
    );
  }
}

class MatchDetailInputPage extends StatefulWidget {
  const MatchDetailInputPage({super.key});
  @override
  MatchDetailInputState createState() => MatchDetailInputState();
}

class MatchDetailInputState extends State<MatchDetailInputPage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add completed Match',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Result',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter the match result',
              ),
              maxLength: 40,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'POTM',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter the player name',
              ),
              maxLength: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Team 1 Score',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText:
                      'Enter the score of team 1 in runs/wicket-(overs) format.'),
              maxLength: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Team 1 top run scorers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Player1-runs(balls)| Player2-runs(balls)'),
              maxLength: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Team 1 top wicket takers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Player1-wickets(overs) |Player2-wickets(overs)'),
              maxLength: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Team 2 Score',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText:
                      'Enter the score of team 2 in runs/wicket-(overs) format.'),
              maxLength: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Team 2 top run scorers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Player1-runs(balls) Player2-runs(balls)'),
              maxLength: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Team 2 top wicket takers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Player1-wickets(overs)| Player2-wickets(overs)'),
              maxLength: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                final enteredText = _controller.text;
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Scorecard submitted!'),
                  ),
                );
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
