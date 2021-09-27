import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack, Positioned, Floating Action Button"),
          //leading: Icon(Icons.camera),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [

              Container(
                height: 200,
                width: 300,
                color: Colors.green,
              ),
              Positioned(
                //bottom: -50,
                  child: CircleAvatar(

                radius: 60, backgroundColor: Colors.red,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
