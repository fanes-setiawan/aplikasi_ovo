import 'package:flutter/material.dart';
import '../view/verifikasi_view.dart';

class VerifikasiController extends State<VerifikasiView> {
  static late VerifikasiController instance;
  late VerifikasiView view;
  final textEditingController = TextEditingController();
  bool isTextFieldEmpty = true;

  istext(String text) {
    setState(() {
      isTextFieldEmpty = text.isEmpty;
    });
  }

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
