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
          // backgroundColor: const Color.fromARGB(149, 8, 40, 66),
          title: const Text(
            'STATISTICS',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
          ),
        ),
        drawer: Drawer(
          // backgroundColor: const Color.fromARGB(149, 8, 40, 66),
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
                )),
                child: ListTile(
                  leading: const Icon(Icons.feedback),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Rating()));
                  },
                  tileColor: const Color.fromARGB(255, 89, 204, 220),
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
    return ListView(children: <Widget>[
      // const SizedBox(height: 16),
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
