import 'package:flutter/material.dart';
import 'package:ovo/core.dart';
import '../controller/inbox_controller.dart';

class InboxView extends StatefulWidget {
  const InboxView({Key? key}) : super(key: key);

  Widget build(context, InboxController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inbox"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<InboxView> createState() => InboxController();
}
