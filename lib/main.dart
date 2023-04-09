import 'modules/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'modules/screens/chats_screen.dart';
import 'modules/screens/calls_screen.dart';
//import 'modules/screens/calls_screen.dart';
//import 'modules/screens/chats_screen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var listDataJason;

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            
            appBar: BuildAppBar(),
          
            body: TabBarView(children: [
              //...............................scr1..........................
              const Center(
                child: Text("camera"),
              ),
               ChatScreen() , //scr2
              //..................................3,4_screen
              const Center(
                child: Text("status"),
              ),
              CallsScreen(),
            ]),
          ),
        ));
  }
}
