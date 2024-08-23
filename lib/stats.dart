import 'package:flutter/material.dart';
import 'package:cricky/mostRuns.dart';
import 'package:cricky/mostwickets.dart';
import 'package:cricky/pointsTable.dart';
import 'package:cricky/rating.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 89, 204, 220),
          title: const Text(
            'STATISTICS',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
          ),
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
        body: const Statistics(),
      ),
    );
  }
}

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: <Widget>[
        _buildStatTile(
          context,
          title: 'Points Table',
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Standings()));
          },
        ),
        _buildStatTile(
          context,
          title: 'Most Runs',
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Mostruns()));
          },
        ),
        _buildStatTile(
          context,
          title: 'Most Wickets',
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  Mostwickets()));
          },
        ),
      ],
    );
  }

  Widget _buildStatTile(BuildContext context, {required String title, required VoidCallback onTap}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 2.0),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
