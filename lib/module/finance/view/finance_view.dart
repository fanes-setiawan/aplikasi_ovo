import 'package:flutter/material.dart';
import 'package:ovo/core.dart';
import '../controller/finance_controller.dart';

class FinanceView extends StatefulWidget {
  const FinanceView({Key? key}) : super(key: key);

  Widget build(context, FinanceController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Finance"),
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
  State<FinanceView> createState() => FinanceController();
}
