import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genesis/card/quote.dart';
import 'quote.dart';



class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  quote.message,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                Text(
                    quote.author,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.purpleAccent,
                    )
                ),
                SizedBox(width: 220.0),
                    IconButton(
                      icon: Icon(Icons.delete),
                      color: Colors.red,
                      onPressed: delete,
                      splashColor: Colors.red[700],
                      splashRadius: 40.0,
                      ),
                    ],
                ),
          ],
        ),
      ),
    );
  }
}