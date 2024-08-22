import 'package:flutter/material.dart';
import 'package:cricky/mostRuns.dart';
import 'package:cricky/mostwickets.dart';
import 'package:cricky/pointsTable.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'STATISTICS',
            style: TextStyle(fontWeight: FontWeight.bold),
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
    return ListView(children: <Widget>[
      Container(
        decoration: const BoxDecoration(
            border: Border(
          top: BorderSide(width: 2.0),
          left: BorderSide(width: 2.0),
          right: BorderSide(width: 2.0),
          bottom: BorderSide(width: 1.0),
        )),
        child: ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Standings()));
          },
          tileColor: const Color.fromARGB(255, 89, 204, 220),
          title: const Text(
            'Points Table',
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
          bottom: BorderSide(width: 1.0),
        )),
        child: ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Mostruns()));
          },
          tileColor: const Color.fromARGB(255, 89, 204, 220),
          title: const Text(
            'Most Runs',
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
        )),
        child: ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Mostwickets()));
          },
          tileColor: const Color.fromARGB(255, 89, 204, 220),
          title: const Text(
            'Most Wickets',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ]);
  }
}
