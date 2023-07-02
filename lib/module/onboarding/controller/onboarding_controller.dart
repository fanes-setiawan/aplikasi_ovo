import 'package:flutter/material.dart';
import 'package:ovo/state_util.dart';
import '../view/onboarding_view.dart';

class OnboardingController extends State<OnboardingView> {
  static late OnboardingController instance;
  late OnboardingView view;

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
