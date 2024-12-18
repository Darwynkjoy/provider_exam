import 'package:examprovider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Secondscreen extends StatefulWidget{
  @override
  _secondscreenState createState()=> _secondscreenState();
}

class _secondscreenState extends State<Secondscreen>{
  @override
  Widget build(BuildContext context){
    final button=Provider.of<providerexample>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Example",style: TextStyle(fontSize: 25,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Center(child: Text("Total count is:${button.numbers.length}",style: TextStyle(fontSize: 20,color: Colors.black),)),
        ],
      ),
    );
  }
}