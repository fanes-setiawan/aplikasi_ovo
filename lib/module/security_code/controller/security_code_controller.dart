import 'package:flutter/material.dart';
import 'package:ovo/state_util.dart';
import '../view/security_code_view.dart';

class SecurityCodeController extends State<SecurityCodeView> {
  static late SecurityCodeController instance;
  late SecurityCodeView view;

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
