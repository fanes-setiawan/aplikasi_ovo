import 'package:flutter/material.dart';
import 'package:ovo/core.dart';
import '../../../state_util.dart';
import '../../../utils/colors.dart';
import '../controller/onboarding_controller.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  Widget build(context, OnboardingController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: AppColors.purple,
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          SizedBox(height: 50),
          Expanded(
            child: Text(
              "OVO",
              style: TextStyle(
                color: AppColors.whiteText,
                fontSize: 38,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  "Solusi Cerdas Finansial",
                  style: TextStyle(
                    color: AppColors.whiteText,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Nikmati berbagai layanan finansial dan kemudahan pembayaran dalam gengaman",
                  style: TextStyle(
                    color: AppColors.whiteText,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 25),
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.whiteButton,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Get.to(VerifikasiView());
                    },
                    child: Text(
                      "Lanjutkan",
                      style: TextStyle(
                        color: AppColors.purpleText,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<OnboardingView> createState() => OnboardingController();
}
