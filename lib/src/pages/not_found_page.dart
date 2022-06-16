import 'package:flutter/material.dart';


class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),        
      ),
      body: Center(
        child: Text('Page Not Found 404')
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.logout, color: Colors.white,),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}