import 'dart:developer';

import 'package:flutter/material.dart';

class MessageHome extends StatelessWidget {
  //const MessageHome({Key? key}) : super(key: key);
  final List<String> users = ["Abebe", "Chaltu", "Chala", "Debebe", "Sami"];
  final List<String> messages = [
    "some message to be displayed here",
    "some message to be displayed here",
    "some message to be displayed here",
    "some message to be displayed here",
    "some message to be displayed here",
    "some message to be displayed here",
    "some message to be displayed here",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(
              users[index],
            ),
            subtitle: Text(messages[index]),
            leading: CircleAvatar(
              child: Text("${users[index].substring(0, 1).toUpperCase()}"),
            ),
            onTap: () {
              log("Index $index is tapped");
            },
          ),
        );
      },
    );
  }
}
