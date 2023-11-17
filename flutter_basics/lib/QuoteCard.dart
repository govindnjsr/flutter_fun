import 'package:flutter/material.dart';
import 'package:myapp/quote.dart';

class QuoteCard extends StatelessWidget {
  //these are the parameters ...
  final Quote quote;
  final Function delete;
  QuoteCard({required this.quote, required this.delete});

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
              style: TextStyle(fontSize: 15.0, color: Colors.grey[400]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              quote.author,
              style: TextStyle(color: Colors.red, fontSize: 10),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  delete();
                },
                child: Icon(Icons.delete))
          ],
        ),
      ),
    );
    ;
  }
}
