import 'package:flutter/material.dart';
import 'package:ovo/core.dart';
import '../controller/verifikasi_controller.dart';

class VerifikasiView extends StatefulWidget {
  const VerifikasiView({Key? key}) : super(key: key);

  Widget build(context, VerifikasiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Verifikasi"),
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
  State<VerifikasiView> createState() => VerifikasiController();
}
