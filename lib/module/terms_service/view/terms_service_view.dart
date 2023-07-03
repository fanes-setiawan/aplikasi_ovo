import 'package:flutter/material.dart';
import 'package:ovo/core.dart';
import '../controller/terms_service_controller.dart';

class TermsServiceView extends StatefulWidget {
  const TermsServiceView({Key? key}) : super(key: key);

  Widget build(context, TermsServiceController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TermsService"),
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
  State<TermsServiceView> createState() => TermsServiceController();
}
