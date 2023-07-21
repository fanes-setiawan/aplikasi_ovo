import 'package:flutter/material.dart';
import 'package:ovo/core.dart';
import 'package:ovo/utils/colors.dart';
import '../controller/verifikasi_controller.dart';

class VerifikasiView extends StatefulWidget {
  const VerifikasiView({Key? key}) : super(key: key);

  Widget build(context, VerifikasiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.to(HelpCenterView());
            },
            icon: Icon(Icons.help),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Masuk atau Daftar",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Masuk atau daftar cuma butuh nomor HP aja.",
                    style: TextStyle(
                      color: AppColors.greyText,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: AppColors.greyId,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                            ),
                          ),
                          child: Center(
                            child: Text("+62"),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          height: 55,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: AppColors.greyBg,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                          ),
                          child: Center(
                            child: TextField(
                              controller: controller.textEditingController,
                              onChanged: (text) {
                                controller.istext(text);
                              },
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext build) {
                            return Column(
                              children: [
                                SizedBox(height: 20),
                                Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/phone.png')),
                                  ),
                                ),
                                Text(
                                  "Mau ubah nomor HP?",
                                  style: TextStyle(
                                    color: AppColors.blackText,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Isi nomor HP lama kamu dan lanjut verifikasi melalui email yang terdaftar di OVO.",
                                  style: TextStyle(
                                    color: AppColors.greyText,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white70,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Nanti Aja",
                                              style: TextStyle(
                                                color: AppColors.purpleText,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: AppColors.purple,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Ubah",
                                              style: TextStyle(
                                                color: AppColors.whiteText,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.zero),
                    ),
                    child: Text(
                      'Nomor HP gak aktif atau hilang',
                      style: TextStyle(
                        color: AppColors.blueLightText,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.22,
            decoration: BoxDecoration(
              color: AppColors.whiteButton,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 30,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                controller: ScrollController(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dengan masuk atau daftar,kamu udah setuju sama",
                      style: TextStyle(
                        color: AppColors.greyText,
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Get.to(TermsServiceView());
                          },
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.zero)),
                          child: Text(
                            "Ketentuan Layanan",
                            style: TextStyle(
                              color: AppColors.blueLightText,
                            ),
                          ),
                        ),
                        Text(
                          " dan ",
                          style: TextStyle(
                            color: AppColors.greyText,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(PrivacyPolicyView());
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                          ),
                          child: Text(
                            "Ketentuan Layanan",
                            style: TextStyle(
                              color: AppColors.blueLightText,
                            ),
                          ),
                        ),
                        Text(
                          " OVO.",
                          style: TextStyle(
                            color: AppColors.greyText,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 20,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: controller.textEditingController.text.isEmpty
                            ? AppColors.greyButton
                            : AppColors.purple,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Get.to(NavbarView());
                        },
                        child: Text(
                          "Lanjutkan",
                          style: TextStyle(
                            color: AppColors.whiteText,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<VerifikasiView> createState() => VerifikasiController();
}
