import 'package:flutter/material.dart';

class ArticleInput extends StatelessWidget{
  const ArticleInput({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: Scaffold(
        body: ArticleInputPage(),
      )
    );
  }
}

class ArticleInputPage extends StatefulWidget{
  const ArticleInputPage({super.key});
  @override
  ArticleInputState createState() => ArticleInputState();
}
class ArticleInputState extends State<ArticleInputPage>{
  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text('NEW ARTICLE',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),),
    ),
    body: const Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: const [
          Text('Headline: ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8,),
          TextField(
            maxLength: 40,
            maxLines: 1,
          ),
          SizedBox(height: 30,),
          Text('Subtext: ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8,),
          TextField(
            maxLength: 40,
            maxLines: 1,
          ),
          SizedBox(height: 30,),

       ],
      )
    ),
  );
}
}