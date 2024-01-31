import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = "";
  List <String> invertedName = [];
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                name = controller.text;
                if(name.isNotEmpty){

                
                invertedName.clear();
              for (int i = 0; i < name.length; i++) {
                invertedName.add(name[i]);
              }
              
          
              if(name==invertedName.reversed.join()) {
              name = "it's a palindrome";
              } else {
                name ="it's not palindrome";
              }
              }
              else{
                name="no value";
              }
              });},
            child: const Text("click me")
          ),
          Text(name)
        ],
      ),
    );
  }
}
