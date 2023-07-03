import 'package:flutter/material.dart';
import 'package:ovo/core.dart';
import '../controller/privacy_policy_controller.dart';

class PrivacyPolicyView extends StatefulWidget {
  const PrivacyPolicyView({Key? key}) : super(key: key);

  Widget build(context, PrivacyPolicyController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PrivacyPolicy"),
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
  State<PrivacyPolicyView> createState() => PrivacyPolicyController();
}
