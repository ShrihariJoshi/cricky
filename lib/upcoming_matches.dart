// import 'package:flutter/material.dart';

// class TournamentSchedule extends StatelessWidget {
//    TournamentSchedule({super.key});
//   // Example schedule data
//   final List<Map<String, String>> schedule = [
//     {"date": "August 25, 2024", "team": "IND V BAN"},
//     {"date": "August 26, 2024", "team": "USA V PAK"},
//     {"date": "August 27, 2024", "team": "ENG V AUS"},
//     // Add more schedule entries as needed
//   ];


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Upcoming Matches'),
//         // Set app bar color as per your preference
//         backgroundColor: const Color.fromARGB(255, 89, 204, 220),
//       ),
//       body: ListView.builder(
//         itemCount: schedule.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(schedule[index]['date']!),
//             subtitle: Text(schedule[index]['team']!),
//             // Customize text styles or other properties as needed
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

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
        title: const Text('Tournament Schedule'),
        backgroundColor: const Color.fromARGB(255, 89, 204, 220),
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