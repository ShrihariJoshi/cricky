// import 'package:cricky/mostRuns.dart';
// import 'package:cricky/mostwickets.dart';
// import 'package:cricky/pointsTable.dart';
// import 'package:cricky/rating.dart';
import 'package:cricky/home_screen.dart';
import 'package:cricky/stats.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CricbaseApp());
}

class CricbaseApp extends StatelessWidget {
  const CricbaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationBar(),
    );
  }
}

class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key});
  @override
  NavigationBarState createState() => NavigationBarState();
}

class NavigationBarState extends State<NavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // List of widgets corresponding to each bottom navigation item
    const List<Widget> widgetOptions = <Widget>[
      HomeScreen(),
      Stats(),
    ];

    void onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        backgroundColor: const Color.fromARGB(255, 89, 204, 220),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_cricket),
            label: 'Stats',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blue,
        onTap: onItemTapped,
      ),
    );
  }
}

      // appBar: AppBar(
      //   title: const Center(child: Text('CRICBASE')),
      // ),
      // drawer: Drawer(
      //   // backgroundColor: const Color.fromARGB(255, 166, 51, 35),
      //   child: ListView(
      //     children: <Widget>[
      //       const Image(
      //         alignment: Alignment.center,
      //         colorBlendMode: BlendMode.color,
      //         image: AssetImage('assets/images/CRICBASE.jpg'),
      //       ),
      //       Container(
      //         decoration: const BoxDecoration(
      //             border: Border(
      //           top: BorderSide(width: 2.0),
      //           left: BorderSide(width: 2.0),
      //           right: BorderSide(width: 2.0),
      //           bottom: BorderSide(width: 1.0),
      //         )),
      //         child: ListTile(
      //           leading: const Icon(Icons.feedback),
      //           onTap: () {
      //             Navigator.push(context,
      //                 MaterialPageRoute(builder: (context) => const Rating()));
      //           },
      //           tileColor: const Color.fromARGB(255, 89, 204, 220),
      //           title: const Text(
      //             'Rate the App',
      //             style: TextStyle(
      //               fontSize: 18,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black,
      //             ),
      //           ),
      //         ),
      //       ),
      //       Container(
      //         decoration: const BoxDecoration(
      //             border: Border(
      //           top: BorderSide(width: 1.0),
      //           left: BorderSide(width: 2.0),
      //           right: BorderSide(width: 2.0),
      //           bottom: BorderSide(width: 2.0),
      //         )),
      //         child: ExpansionTile(
      //           collapsedBackgroundColor:
      //               const Color.fromARGB(255, 89, 204, 220),
      //           shape: Border.all(
      //             color: Colors.black,
      //             width: 2.0,
      //           ),
      //           leading: const Icon(Icons.headset_mic, color: Colors.black),
      //           title: const Text(
      //             'Support',
      //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //           ),
      //           children: const <Widget>[
      //             ListTile(
      //               title: Text('Contact Us: 080-260324XX'),
      //               leading: Icon(Icons.phone, color: Colors.black),
      //             ),
      //             ListTile(
      //               title: Text('Queries: cricbaseapp@gmail.com'),
      //               leading: Icon(Icons.mail, color: Colors.black),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // body: const Padding(
      //   padding: EdgeInsets.all(16.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(
      //         'Recent Matches:',
      //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //       ),
      //       SizedBox(height: 8),
      //       Row(
      //         children: [
      //           MatchDetailWidget(
      //             date: '12 Aug,2024',
      //             team1: ' IND: 176/7 (20)',
      //             team2: ' RSA: 169/8 (20)',
      //             status: 'INDIA won by 7 runs.',
      //             team2color: Colors.grey,
      //           ),
      //           SizedBox(width: 16),
      //           MatchDetailWidget(
      //             date: '10 Aug,2024',
      //             team1: ' IND: 171/7 (20)',
      //             team2: ' ENG: 103/10 (16.4)',
      //             status: 'INDIA won by 68 runs.',
      //             team2color: Colors.grey,
      //           ),
      //         ],
      //       ),
      //       SizedBox(height: 16),
      //       Text(
      //         'Upcoming Matches:',
      //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //       ),
      //       SizedBox(height: 8),
      //       Row(
      //         children: [
      //           MatchDetailWidget(
      //             date: '19-23 Sept,2024',
      //             team1: ' IND',
      //             team2: ' BAN',
      //             status: 'Test 1 of 2',
      //           ),
      //           SizedBox(width: 16),
      //           MatchDetailWidget(
      //             date: '26-30 Sept,2024',
      //             team1: ' IND',
      //             team2: ' BAN',
      //             status: 'Test 2 of 2',
      //           ),
      //         ],
      //       ),
            // const SizedBox(height: 16),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => const Standings(),
            //         ));
            //   },
            //   child: const Text(
            //     'Points Table',
            //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //   ),
            // ),
            // const SizedBox(height: 16),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => Mostruns()));
            //   },
            //   child: const Text(
            //     'Most Runs',
            //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //   ),
            // ),
            // const SizedBox(height: 16),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => Mostwickets()));
            //   },
            //   child: const Text(
            //     'Most Wickets',
            //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //   ),
            // )
      //     ],
      //   ),
      // ),

// // class MatchDetailWidget extends StatelessWidget {
//   const MatchDetailWidget({
//     super.key,
//     required this.date,
//     required this.team1,
//     required this.team2,
//     this.status,
//     this.team1color = Colors.black,
//     this.team2color = Colors.black,
//   });

//   final String date;
//   final String team1;
//   final String team2;
//   final String? status;
//   final Color team1color;
//   final Color team2color;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         height: 100,
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.black),
//         ),
//         child: Column(
//           children: [
//             Text(
//               date,
//               style: const TextStyle(fontSize: 12),
//               textAlign: TextAlign.left,
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 team1,
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: team1color,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textAlign: TextAlign.left,
//               ),
//             ),
//             Container(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 team2,
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: team2color,
//                 ),
//                 textAlign: TextAlign.left,
//               ),
//             ),
//             if (status != null)
//               Text(
//                 status!,
//                 style: const TextStyle(fontSize: 14),
//                 textAlign: TextAlign.right,
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
