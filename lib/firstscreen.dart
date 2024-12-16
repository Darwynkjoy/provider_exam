import 'package:examprovider/provider.dart';
import 'package:examprovider/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Firstscreen extends StatefulWidget{
  @override
  State <Firstscreen> createState()=> _firstscreenState();
}

class _firstscreenState extends State<Firstscreen>{
  @override
  Widget build(BuildContext context){
    final button=Provider.of<providerexample>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Provider example",style: TextStyle(fontSize: 25,color: Colors.black),),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.push((context), MaterialPageRoute(builder: (context)=>Secondscreen()));
            },
            child: Icon(Icons.arrow_forward,color: Colors.red,))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text("Total count is:${button.count}",style: TextStyle(fontSize: 20,color: Colors.black),)),
           Text("1",style: TextStyle(fontSize: 15,color: Colors.black),),
           Text("2",style: TextStyle(fontSize: 15,color: Colors.black),),
           Text("3",style: TextStyle(fontSize: 15,color: Colors.black),),
           Text("4",style: TextStyle(fontSize: 15,color: Colors.black),),
           Text("5",style: TextStyle(fontSize: 15,color: Colors.black),),
           Text("${button.count}",style: TextStyle(fontSize: 15,color: Colors.black),),
           Expanded(
             child: ListView.builder(
              itemBuilder: (context,index){
              return ListTile(
                title: Text("${button.count}"),
              );
             },
             itemCount: button.count-5),
           )

          ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        button.increment();
      },child: Text("+"),),
    );
  }
}