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
            child: Icon(Icons.arrow_forward,color: const Color.fromARGB(255, 255, 255, 255),))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text("Total count is:${button.numbers.length}",style: TextStyle(fontSize: 20,color: Colors.black),)),
           //Text("${button.count}",style: TextStyle(fontSize: 15,color: Colors.black),),
           Expanded(
             child: ListView.builder(
              itemBuilder: (context,index){
              return ListTile(
                title: Text("${button.numbers[index].toString()}"),
              );
             },
             itemCount: button.numbers.length),
           )

          ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        button.increment();
      },child: Text("+"),),
    );
  }
}