import 'package:flutter/material.dart';
// ignore: non_constant_identifier_names

BuildTabBar() {
  return const TabBar(
    indicatorColor: Colors.white,
    tabs: [
      Tab(
        icon: Icon(Icons.camera_alt_rounded),
      ),
      Tab(
        text: "CHATS",
      ),
      Tab(
        text: "STATUS",
      ),
      Tab(
        text: "CALLS",
      ),
    ],
  );
}
