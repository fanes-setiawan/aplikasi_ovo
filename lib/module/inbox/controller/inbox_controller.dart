import 'package:flutter/material.dart';
import '../view/inbox_view.dart';

class InboxController extends State<InboxView> {
  static late InboxController instance;
  late InboxView view;
  TabController? tabController;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
