import 'package:flutter/material.dart';
import 'package:ovo/core.dart';
import '../controller/security_code_controller.dart';

class SecurityCodeView extends StatefulWidget {
  const SecurityCodeView({Key? key}) : super(key: key);

  Widget build(context, SecurityCodeController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SecurityCode"),
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
  State<SecurityCodeView> createState() => SecurityCodeController();
}
