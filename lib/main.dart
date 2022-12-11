import 'package:flutter/material.dart';
import 'Quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'I have the high ground', author: 'obi-wan kinobi'),
    Quote(text: 'Do or do not, there is no try', author: 'master yoda'),
    Quote(text: 'I hate you!', author: 'anikin skywalker'),
    Quote(author: 'darth vader', text: 'I am your father'),
  ];

  Widget quoteTemplate(quote){
    return Card(

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: quotes.map((e) => Text('${e.text} - ${e.author}')).toList(),
       ),
      )
    );
  }
}
