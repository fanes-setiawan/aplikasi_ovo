import 'package:flutter/material.dart';
import 'package:ovo/core.dart';
import '../controller/pay_controller.dart';

class PayView extends StatefulWidget {
  const PayView({Key? key}) : super(key: key);

  Widget build(context, PayController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pay"),
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
  State<PayView> createState() => PayController();
}
