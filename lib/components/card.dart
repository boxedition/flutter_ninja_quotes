import 'package:flutter/material.dart';
import 'package:flutter_ninja_quotes/class/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final void Function()? cbDelete;

  QuoteCard({required this.quote, required this.cbDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton.icon(
              onPressed: cbDelete,
              label: Text("Delete Quote"),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
