import 'package:flutter/material.dart';


class TextFieldWithList extends StatefulWidget {
  @override
  _TextFieldWithListState createState() => _TextFieldWithListState();
}

class _TextFieldWithListState extends State<TextFieldWithList> {







  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: TextField(

              decoration: InputDecoration(
                labelText: 'Search Item',
                border: OutlineInputBorder(),
              ),

            ),
          ),
          // A container to simulate other widgets
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            color: Colors.blue[100],
            height: 100,
            child: Center(child: Text('Other Widget Below')),
          ),
          // Positioning the list below the TextField dynamically

        ],
      ),
    );
  }
}
