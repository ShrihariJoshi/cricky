import 'package:flutter/material.dart';
import 'package:cricky/rating.dart';
import 'package:cricky/article_input.dart';
// import 'package:carousel_slider/carousel_controller.dart' as slider_controller;
// import 'package:carousel_slider/carousel_slider.dart';

// final slider_controller.CarouselController controller =
//     slider_controller.CarouselController();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomeScreenPage(),
      ),
    );
  }
}

class HomeScreenPage extends HomeScreen {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color.fromARGB(149, 8, 40, 66),
        title: const Text(
          'CRICBASE',
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Rating()));
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
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 190,
                  physics: const ScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  children: const [
                    MatchDetailWidget(
                      date: '12 Aug,2024',
                      team1: ' IND: 176/7 (20)',
                      team2: ' RSA: 169/8 (20)',
                      status: 'INDIA won by 7 runs.',
                      team2color: Colors.grey,
                    ),
                    MatchDetailWidget(
                      date: '10 Aug,2024',
                      team1: ' IND: 171/7 (20)',
                      team2: ' ENG: 103/10 (16.4)',
                      status: 'INDIA won by 68 runs.',
                      team2color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Upcoming Matches:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 190,
                  physics: const ScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  children: const [
                    MatchDetailWidget(
                      date: '19-23 Sept,2024',
                      team1: ' IND',
                      team2: ' BAN',
                      status: 'Test 1 of 2',
                    ),
                    // Spacer()
                    MatchDetailWidget(
                      date: '26-30 Sept,2024',
                      team1: ' IND',
                      team2: ' BAN',
                      status: 'Test 2 of 2',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Articles:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: const [
                  ArticleWidget(
                    heading: 'ABC hits his maiden century',
                    bbody: 'ABC took just 66 balls to do so.',
                  ),
                  ArticleWidget(
                    heading: 'DEF smashes 6 sixes in a row',
                    bbody: 'Absolute madness in the middle of the ground.',
                  ),
                  ArticleWidget(
                    heading: 'XYZ gets his maiden fifer',
                    bbody: 'XYZ uprooted every batter he faced.',
                  ),
                ],
              ),
            ),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Container(
          // height: 100,
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
      ),
    );
  }
}

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({
    super.key,
    required this.heading,
    required this.bbody,
  });

  final String heading;
  final String bbody;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 80,
            alignment: Alignment.topLeft,
            child: Text(
              bbody,
              style: const TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
