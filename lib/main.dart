import 'modules/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'modules/screens/chats_screen.dart';

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
            floatingActionButton: const FloatingActionButton(
              onPressed: null,
              backgroundColor: Color.fromRGBO(0, 168, 132, 35),
              child: Icon(Icons.chat),
            ),
            body: TabBarView(children: [
              //...............................scr1..........................
              const Center(
                child: Text("camera"),
              ),
                ChatScreen(), //scr2
              //..................................3,4_screen
              const Center(
                child: Text("status"),
              ),
              const Center(
                child: Text("calls"),
              ),
            ]),
          ),
        ));
  }
}
