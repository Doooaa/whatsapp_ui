import 'dart:convert';
import '../../web_services/api.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_project/constant/colors.dart';
import 'package:flutter/services.dart' show rootBundle;


class  CallsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ..............floatingActionButton................
      floatingActionButton: const FloatingActionButton(
              onPressed: null,
              backgroundColor: Color.fromRGBO(0, 168, 132, 35),
              child: Icon(Icons.call),
            ),
      body:FutureBuilder<List<People>>(
      future: _loadJsonData(),
      builder: (context, snapshot) {
        //...............................error...........................
        if (snapshot.hasError) {
          return Center(
            child: Text('${snapshot.error}'),
          );
          //...............................success...........................
        } else if (snapshot.hasData) {
          final peopleList = snapshot.data!;
          return ListView.builder(
              itemCount: peopleList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image(image: NetworkImage(peopleList[index].photo)),
                  ),
                  title: Text(peopleList[index].name,style:const TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Row(children: [
                    const Icon(Icons.call_missed_outgoing, color: Colors.red),
                    Expanded(
                      child: Text(
                      peopleList[index].date))
                  ] // if more than 20 characters
                      ),
                  trailing:  Icon(Icons.call,color: mainColor)
                );
              });
          //...............................loading...........................
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
       )
    );
  }
}

Future<List<People>> _loadJsonData() async {
  final jsonString = await rootBundle.loadString('assets/whatsapp02.json');
  final jsonData = json.decode(jsonString) as  Map<String, dynamic>;
  final List<dynamic> listDataJason = jsonData['people'];
  return listDataJason.map((e) => People.fromJson(e)).toList();
}