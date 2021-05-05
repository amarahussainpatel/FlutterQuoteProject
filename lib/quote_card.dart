import 'package:flutter/material.dart';
import 'Quotes.dart';

class QuoteCard extends StatelessWidget {
  final quotes quote;
  final Function delete;  //delete function is passed in the parameter under so whenever we use this c;ass we'll add these 2 parameters
  QuoteCard({ this.quote,this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Text(
                    quote.text,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Center(
                  child: Text(
                      quote.author,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey[800],
                      )
                  ),
                ),
                SizedBox(height: 16.0),
                TextButton.icon(
                    onPressed: delete,
                    icon: Icon(Icons.delete),
                    label: Text('Delete Quote'),
                )
              ]
          ),
        )
    );
  }
}