import 'dart:convert';
import 'modules/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:whatsapp_project/web_services/api.dart';

void main() async {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            //   //assets\whatsapp02.json
            appBar: BuildAppBar(),
            floatingActionButton: const FloatingActionButton(
              onPressed: null,
              backgroundColor: Color.fromRGBO(0, 168, 132, 35),
              child: Icon(Icons.chat),
            ),
            //.................................body....................//
            body: FutureBuilder(
              future: _loadJsonData(),
              builder: (context, data) {
         //.................................error....................//
                if (data.hasError) {
                  return Center(
                    child: Text('${data.error}'),
                  );
      //.................................success...................//
                } else if (data.hasData) {
                  var items=data.data as List<People>;
     //.....................listview..............
                  return ListView.builder(itemBuilder: ((context, index) { 
                    return  TabBarView(
                      children: <Widget>[
                        Scaffold(
                          // ignore: unnecessary_string_interpolations
                          body: Text("${items[index].name.toString()}"),
                        ),
                        const Center(
                          child: Text("It's rainy here"),
                        ),
                        const Center(
                          child:  Text("It's sunny here"),
                        ),
                       const  Center(
                          child: Text("It's sunny here"),
                        ),
                      ],
                    );
                  }));
                }
             //.................................loadig time...................//
                else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )),
      ),
    );
  }
}

Future<List<People>> _loadJsonData() async {
  final jsonString = await rootBundle.loadString('assets/whatsapp02.json');
  final listDataJason = json.decode(jsonString) as List<dynamic>;
  return listDataJason.map((e) => People.fromJson(e)).toList();
}
