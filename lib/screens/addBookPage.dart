import 'package:flutter/material.dart';

class AddBookPage extends StatefulWidget {

  @override
  _AddBookPageState createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Add Book Page")),
      ),
          body: Center(
         child: Text("ADD BOOK PAGE"),
      ),
    );
  }
}