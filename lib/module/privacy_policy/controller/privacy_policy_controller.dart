import 'package:flutter/material.dart';
import 'package:ovo/state_util.dart';
import '../view/privacy_policy_view.dart';

class PrivacyPolicyController extends State<PrivacyPolicyView> {
  static late PrivacyPolicyController instance;
  late PrivacyPolicyView view;

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
