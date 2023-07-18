import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../view/pay_view.dart';

class PayController extends State<PayView> {
  static late PayController instance;
  late PayView view;
  Barcode? result;
  QRViewController? controllerQr;
  final GlobalKey qrKey = GlobalKey(debugLabel: "QR");
  bool flashCondition = false;

  condition() {
    setState(() {
      flashCondition = flashCondition != flashCondition;
      print(flashCondition);
    });
  }

  flash() async {
    await controllerQr?.toggleFlash();
    setState(() {});
  }

  flip() async {
    await controllerQr?.flipCamera();
    setState(() {});
  }

  pause() async {
    await controllerQr?.pauseCamera();
    setState(() {});
  }

  resume() async {
    await controllerQr?.resumeCamera();
    setState(() {});
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      controllerQr = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });

      if (result != null) {
        print(
            "Result"); // if you want to do any action with qr result then do code is here
        print(result!.code);
      }
    });
  }

  void onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controllerQr!.pauseCamera();
    }
    controllerQr!.resumeCamera();
  }

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    controllerQr?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
