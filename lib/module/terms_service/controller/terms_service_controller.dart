import 'package:flutter/material.dart';
import 'package:ovo/state_util.dart';
import '../view/terms_service_view.dart';

class TermsServiceController extends State<TermsServiceView> {
  static late TermsServiceController instance;
  late TermsServiceView view;

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
