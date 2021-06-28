import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genesis/quote.dart';
import 'quote.dart';



class QuoteCard extends StatelessWidget {
  final Quote quote;

  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Text(
              quote.message,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
                quote.author,
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.purpleAccent,
                )
            )
          ],
        ),
      ),
    );
  }
}