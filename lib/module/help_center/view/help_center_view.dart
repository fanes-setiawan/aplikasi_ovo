import 'package:flutter/material.dart';
import 'package:ovo/core.dart';
import '../controller/help_center_controller.dart';

class HelpCenterView extends StatefulWidget {
  const HelpCenterView({Key? key}) : super(key: key);

  Widget build(context, HelpCenterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HelpCenter"),
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
  State<HelpCenterView> createState() => HelpCenterController();
}
