import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ovo/utils/colors.dart';

class FinancialCard extends StatelessWidget {
  const FinancialCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Finansial Kamu",
                style: TextStyle(
                  color: AppColors.blackText,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.white,
              surfaceTintColor: Colors.white,
              shadowColor: Colors.grey[500],
              elevation: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/logoovo.svg",
                          color: AppColors.purpleText,
                        ),
                        Text(
                          " | ",
                          style: TextStyle(
                            fontSize: 23,
                            color: AppColors.purpleText,
                          ),
                        ),
                        Text(
                          "INVEST",
                          style: TextStyle(
                            fontSize: 23,
                            color: AppColors.purpleText,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Powered by",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.greyText,
                        ),
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        "assets/images/Bareksa.png",
                        width: 80,
                        height: 30,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Saatnya kamu mulai investasi dengan\nyang aman dan pasti.",
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.greyText,
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.purple,
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Colors.transparent),
                            onPressed: () {},
                            child: Text(
                              "Mulai",
                              style: TextStyle(
                                color: AppColors.whiteText,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
