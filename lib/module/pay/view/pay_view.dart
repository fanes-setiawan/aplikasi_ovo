import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ovo/utils/colors.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../../../core.dart';
import '../controller/pay_controller.dart';

class PayView extends StatefulWidget {
  const PayView({Key? key}) : super(key: key);

  Widget build(context, PayController controller) {
    controller.view = this;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                  height: MediaQuery.of(context).size.height - 190,
                  child: _buildQrView(context, controller)),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // if (controller.result != null)
                    //   Text(
                    //     'Barcode Type: ${describeEnum(controller.result!.format)}   Data: ${controller.result!.code}',
                    //   ) // your result goes here
                    // else
                    //   const Text('Scan a code'),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Bisa Juga Pakai",
                        style: TextStyle(
                          color: AppColors.blackText,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    Builder(builder: (context) {
                      List menu = [
                        {
                          "logo": "assets/images/phone.png",
                          "title": "Nomor HP",
                          "onTap": () {}
                        },
                        {
                          "logo": "assets/images/barcode.png",
                          "title": "Loyalty Code",
                          "onTap": () {}
                        },
                        {
                          "logo": "assets/images/indomart.png",
                          "title": "Kode Bayar",
                          "onTap": () {}
                        }
                      ];
                      return Center(
                        child: SizedBox(
                          height: 80.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: menu.map(
                              (item) {
                                return Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: InkWell(
                                    onTap: () {
                                      item["onTap"];
                                    },
                                    child: Container(
                                      width: 100,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors.whiteButton,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1,
                                            offset: Offset(1, 0),
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            item["logo"],
                                            width: 50.0,
                                            height: 50.0,
                                            fit: BoxFit.fill,
                                          ),
                                          Text(
                                            item["title"],
                                            style: TextStyle(
                                              color: AppColors.blackText,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      );
                    }),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        color: AppColors.greyButton,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Scan tiket parkir bermasalah?",
                              style: TextStyle(
                                fontSize: 13,
                                color: AppColors.blackText,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Input manual",
                                style: TextStyle(
                                  color: AppColors.blueLightText,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context, PayController controller) {
    var qrKey = controller.qrKey;

    return Stack(
      alignment: Alignment.center,
      children: [
        QRView(
          key: qrKey,
          onQRViewCreated: controller.onQRViewCreated,
          overlay: QrScannerOverlayShape(
            borderColor: Colors.blue,
          ),
          onPermissionSet: (ctrl, p) =>
              controller.onPermissionSet(context, ctrl, p),
        ),
        Positioned(
          top: 30,
          child: Text(
            "Scan untuk membayar",
            style: TextStyle(
              color: AppColors.whiteText,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: SvgPicture.asset(
            "assets/icons/qris.svg",
            width: 60,
            height: 25,
            color: AppColors.whiteButton,
          ),
        ),
        Positioned(
          bottom: 20,
          right: 10,
          child: IconButton(
            onPressed: () {
              Get.to(NavbarView());
            },
            icon: Icon(
              Icons.add_a_photo,
              color: AppColors.whiteButton,
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 10,
          child: IconButton(
            onPressed: () {
              Get.to(NavbarView());
            },
            icon: Icon(
              Icons.cancel,
              color: AppColors.whiteButton,
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 10,
          child: IconButton(
            onPressed: () {
              controller.condition();
              controller.flash();
            },
            icon: FutureBuilder(
              future: controller.controllerQr?.getFlashStatus(),
              builder: (context, snapshot) {
                return snapshot.data == true
                    ? Icon(
                        Icons.flash_on,
                        color: AppColors.whiteButton,
                      )
                    : Icon(
                        Icons.flash_off,
                        color: AppColors.whiteButton,
                      );
              },
            ),
          ),
        )
      ],
    );
  }

  @override
  State<PayView> createState() => PayController();
}
