import 'package:flutter/material.dart';
import 'package:flutter_ninja_quotes/class/quote.dart';
import 'package:flutter_ninja_quotes/components/card.dart';

void main() => runApp(
      MaterialApp(
        home: QuoteList(),
      ),
    );

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'Ai Jesus!', author: 'Eduardo'),
    Quote(text: 'What could possibly go wrong?', author: "Jeramy Clarkson"),
    Quote(text: "Sou um autocarro.", author: "Diogo"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
          children: quotes.map((quote) => QuoteCard(quote: quote)).toList()),
    );
  }
}
