import 'package:flutter/material.dart';

class TesterView extends StatefulWidget {
  const TesterView({super.key});

  @override
  State<TesterView> createState() => _TesterViewState();
}

class _TesterViewState extends State<TesterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text(
          "Bounpone",
          style: TextStyle(
              color: Colors.white, 
              fontSize: 18, 
              fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.person)],
      ),
      //body: Center(child: Text("welcome to my Mobile app"),),
      body: Center(child: Text("Welcome my App"),),
      bottomNavigationBar: Container(
        height: 120,
        color: Colors.red,
        
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
         onPressed:(){},)
      

    );
  }
}
