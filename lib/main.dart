import 'package:cricky/mostRuns.dart';
import 'package:cricky/mostwickets.dart';
import 'package:cricky/pointsTable.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CricbaseApp());
}

class CricbaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('CRICBASE')),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                'CRICBASE',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Image(
              alignment: Alignment.center,
              image: AssetImage('assets/images/CRICBASE.jpg'),
            ),
            ListTile(
              leading: Icon(Icons.feedback, color: Colors.black),
              title: Text('Rate the App',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            ExpansionTile(
                leading: Icon(Icons.headset_mic, color: Colors.black),
                title: Text('Support',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                children: <Widget>[
                  ListTile(
                    title: Text('Contact Us: 080-260324XX'),
                    leading: Icon(Icons.phone, color: Colors.black),
                  ),
                  ListTile(
                      title: Text('Queries: cricbaseapp@gmail.com'),
                      leading: Icon(Icons.mail, color: Colors.black))
                ]),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recent Matches:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                MatchDetailWidget(
                  date: '12 Aug,2024',
                  team1: ' IND: 176/7 (20)',
                  team2: ' RSA: 169/8 (20)',
                  status: 'INDIA won by 7 runs.',
                  team2color: Colors.grey,
                ),
                SizedBox(width: 16),
                MatchDetailWidget(
                  date: '10 Aug,2024',
                  team1: ' IND: 171/7 (20)',
                  team2: ' ENG: 103/10 (16.4)',
                  status: 'INDIA won by 68 runs.',
                  team2color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Upcoming Matches:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                MatchDetailWidget(
                  date: '19-23 Sept,2024',
                  team1: ' IND',
                  team2: ' BAN',
                  status: 'Test 1 of 2',
                ),
                SizedBox(width: 16),
                MatchDetailWidget(
                  date: '26-30 Sept,2024',
                  team1: ' IND',
                  team2: ' BAN',
                  status: 'Test 2 of 2',
                ),
              ],
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Standings(),
                    ));
              },
              child: const Text(
                'Points Table',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mostruns()));
              },
              child: const Text(
                'Most Runs',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mostwickets()));
              },
              child: const Text(
                'Most Wickets',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MatchDetailWidget extends StatelessWidget {
  const MatchDetailWidget({
    super.key,
    required this.date,
    required this.team1,
    required this.team2,
    this.status,
    this.team1color = Colors.black,
    this.team2color = Colors.black,
  });

  final String date;
  final String team1;
  final String team2;
  final String? status;
  final Color team1color;
  final Color team2color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          children: [
            Text(
              date,
              style: const TextStyle(fontSize: 12),
              textAlign: TextAlign.left,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                team1,
                style: TextStyle(
                  fontSize: 18,
                  color: team1color,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                team2,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: team2color,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            if (status != null)
              Text(
                status!,
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.right,
              ),
          ],
        ),
      ),
    );
  }
}
