import 'dropDownMenue.dart';
import '../../constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_project/modules/widgets/TabBar.dart';
// ignore: non_constant_identifier_names
BuildAppBar() {
  return AppBar(
    title: const Text("WhatsApp"),
    actions: [
      const IconButton(
        onPressed: null,
        icon: Icon(
          Icons.search,
          color: Colors.white,
          size: 27,
        ),
      ),
      BuildPopMenuButton(),
    ],
    backgroundColor: mainColor,
    bottom: BuildTabBar(),
  );
}
