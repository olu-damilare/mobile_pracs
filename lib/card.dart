import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genesis/quote.dart';
import 'package:genesis/quoteCard.dart';
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
        children: quotes.map((quote) => QuoteCard(
          quote:quote,
          delete: (){
              setState((){
                quotes.remove(quote);
              });
          }
         )).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Text("click"),
        backgroundColor: Colors.purpleAccent[400],
      ),
    );
  }
}



