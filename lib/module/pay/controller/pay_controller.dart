import 'package:flutter/material.dart';
import 'package:ovo/state_util.dart';
import '../view/pay_view.dart';

class PayController extends State<PayView> {
  static late PayController instance;
  late PayView view;

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
