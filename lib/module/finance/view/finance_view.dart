import 'package:flutter/material.dart';
import 'package:ovo/core.dart';
import '../controller/finance_controller.dart';

class FinanceView extends StatefulWidget {
  const FinanceView({Key? key}) : super(key: key);

  Widget build(context, FinanceController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.purple,
        title: const Text(
          "Finance",
          style: TextStyle(
            color: AppColors.whiteText,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 220,
                    decoration: BoxDecoration(
                      color: AppColors.greyBg,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Icon(Icons.signal_cellular_alt),
                              SizedBox(width: 10),
                              Text(
                                "Invest",
                                style: TextStyle(
                                  color: AppColors.blackText,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Icon(
                                Icons.new_label_rounded,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 90,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Saatnya investasi dengan yang pasti!",
                                  style: TextStyle(
                                    color: AppColors.blackText,
                                    fontSize: 11,
                                  ),
                                ),
                                Text(
                                  "Beli Produck investasi dengan mudah dan aman pake OVO Cash!",
                                  style: TextStyle(
                                    color: AppColors.greyText,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(
                                "Powered by",
                                style: TextStyle(
                                  color: AppColors.blackText,
                                  fontSize: 11,
                                ),
                              ),
                              Image.asset(
                                "assets/images/Bareksa.png",
                                width: 80.0,
                                height: 25.0,
                                fit: BoxFit.fill,
                              ),
                              Spacer(),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: AppColors.purple,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "Mulai",
                                    style: TextStyle(
                                      color: AppColors.whiteText,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<FinanceView> createState() => FinanceController();
}
