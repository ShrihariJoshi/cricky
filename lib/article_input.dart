import 'package:flutter/material.dart';
import 'package:cricky/home_screen.dart';

class ArticleInput extends StatelessWidget {
  const ArticleInput({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: ArticleInputPage(),
    ));
  }
}

class ArticleInputPage extends StatefulWidget {
  const ArticleInputPage({super.key});
  @override
  ArticleInputState createState() => ArticleInputState();
}

class ArticleInputState extends State<ArticleInputPage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NEW ARTICLE',
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
                'Headline: ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your text here',
                  hintText: 'Type something...',
                ),
                maxLength: 40,
                maxLines: 1,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Subtext: ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your text here',
                  hintText: 'Type something...',                  
                ),
                maxLength: 200,
                maxLines: 3,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  // Display the entered text using a SnackBar
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
                child: const Text('Submit', style: TextStyle(color: Colors.black),),
              ),
              const SizedBox(height:8 ,),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: const Text('Cancel', style: TextStyle(color: Colors.black),),
              ),
            ],
          )),
    );
  }
}
