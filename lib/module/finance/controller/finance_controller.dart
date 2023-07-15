import 'package:flutter/material.dart';
import '../view/finance_view.dart';

class FinanceController extends State<FinanceView> {
  static late FinanceController instance;
  late FinanceView view;

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
