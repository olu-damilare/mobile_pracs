import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genesis/quote.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Quote> quotes = [
    Quote(message: 'water no get enemy', author: 'Fela'),
    Quote(message: 'remember what peace there may be in silence', author: 'Desiderata'),
  ];


  Widget quoteTemplate(quote){
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
                    color: Colors.purpleAccent
              )
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Genesis"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent[400],
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Text("click"),
        backgroundColor: Colors.purpleAccent[400],
      ),
    );
  }
}

