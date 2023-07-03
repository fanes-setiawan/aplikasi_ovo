import 'package:flutter/material.dart';
import 'package:ovo/state_util.dart';
import '../view/help_center_view.dart';

class HelpCenterController extends State<HelpCenterView> {
  static late HelpCenterController instance;
  late HelpCenterView view;

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
