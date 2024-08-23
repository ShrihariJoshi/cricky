import 'package:flutter/material.dart';
import 'package:cricky/rating.dart';

class TournamentSchedule extends StatelessWidget {
  final List<Map<String, String>> schedule = [
    {"date": "August 25, 2024", "team": "Team A vs Team B"},
    {"date": "August 26, 2024", "team": "Team C vs Team D"},
    {"date": "August 27, 2024", "team": "Team E vs Team F"},
    // Add more schedule entries as needed
  ];
 TournamentSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tournament Schedule',style: TextStyle(
          fontWeight: FontWeight.w500, fontSize: 28,
          color: Colors.black),
          ),
        backgroundColor: const Color.fromARGB(255, 89, 204, 220),
      ),
      drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const Image(
                alignment: Alignment.center,
                colorBlendMode: BlendMode.color,
                image: AssetImage('assets/images/CRICBASE.jpg'),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 2.0),
                    left: BorderSide(width: 2.0),
                    right: BorderSide(width: 2.0),
                    bottom: BorderSide(width: 1.0),
                  ),
                ),
                child: ListTile(
                  leading: const Icon(Icons.feedback),
                  tileColor: const Color.fromARGB(255, 89, 204, 220),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Rating()));
                  },
                  title: const Text(
                    'Rate the App',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0),
                    left: BorderSide(width: 2.0),
                    right: BorderSide(width: 2.0),
                    bottom: BorderSide(width: 2.0),
                  ),
                ),
                child: ExpansionTile(
                  collapsedBackgroundColor:
                     const Color.fromARGB(255, 89, 204, 220),
                  backgroundColor: const Color.fromARGB(255, 89, 204, 220),
                  shape: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  leading: const Icon(Icons.headset_mic, color: Colors.black),
                  title: const Text(
                    'Support',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: const <Widget>[
                    ListTile(
                      title: Text('Contact Us: 080-260324XX'),
                      leading: Icon(Icons.phone, color: Colors.black),
                    ),
                    ListTile(
                      title: Text('Queries: cricbaseapp@gmail.com'),
                      leading: Icon(Icons.mail, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      body: ListView.builder(
        itemCount: schedule.length,
        itemBuilder: (context, index) {
          final match = schedule[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xFF082842)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    match['date']!,
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    match['team']!,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}