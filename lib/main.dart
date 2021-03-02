import 'package:flutter/material.dart';

import './widgets/user_transaction.dart';

void main() => runApp(Chortke());

class Chortke extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chortke',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false, // To hide the debug banner
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chortke'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {}, // To open and close a new transaction
          ),
        ],
      ),
      // To scroll the whole page and prevent the keyboard from bugging
      body: SingleChildScrollView(
        child: Column(

          // TODO Leave a comment for the bottom two lines

          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.yellow,
                child: Text('CHART!'),
                elevation: 6,
              ),
            ),
            UserTransactions()
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {}, // To open and close a new transaction
      ),
    );
  }
}
