import 'package:flutter/material.dart';
import 'package:ovo/core.dart';
import '../view/navbar_view.dart';

class NavbarController extends State<NavbarView> {
  static late NavbarController instance;
  late NavbarView view;
  int currentTab = 0;
  Widget currenScreen = HomeView();

  void onTapped(int index) {
    setState(() {
      currentTab = index;
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
