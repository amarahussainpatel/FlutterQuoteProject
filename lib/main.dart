import 'package:flutter/material.dart';
import 'Quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}




class _QuoteListState extends State<QuoteList> {
  @override
  List <quotes> Quotes = [ //quotes is class in Quotes.dart
    quotes(author: 'Oscar Wilde',text: 'Be Happy'),
    quotes(author: 'Oscar Wilde',text: 'Be Lively'),
    quotes(author: 'Oscar Wilde',text: 'Be Healthy'),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        /*children: Quotes.map((quotes) => Text('${quotes.text} -  ${quotes.author}' )).toList(),*/
        children: Quotes.map((quotes) => QuoteCard(
            quote: quotes,
            delete: (){
              setState(() {
                Quotes.remove(quotes);
              });
            }
        )).toList(),
      ),
    );
  }
}




