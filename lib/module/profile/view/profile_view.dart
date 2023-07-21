import 'package:flutter/material.dart';
import 'package:ovo/core.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 100.0,
            flexibleSpace: const FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 15),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (index == 0) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 28.0,
                                        backgroundColor: AppColors.greyBg,
                                        child: Icon(
                                          Icons.account_circle,
                                          size: 55,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Fanes Setiawan",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "0883-2435-XXXX",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Ubah",
                                      style: TextStyle(
                                        color: AppColors.blueLightText,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.qr_code,
                                          size: 30,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Qr Code",
                                          style: TextStyle(
                                            color: AppColors.blackText,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.back_hand_rounded,
                                          size: 30,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Loyalty Code",
                                          style: TextStyle(
                                            color: AppColors.blackText,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Akun",
                            style: TextStyle(
                              color: AppColors.blackText,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Builder(
                            builder: (context) {
                              List listButton = [
                                {
                                  "icon": Icons.crisis_alert,
                                  "text": "OVO Premier",
                                  "onTap": () {}
                                },
                                {
                                  "icon": Icons.flag_circle,
                                  "text": "OVO Points",
                                  "onTap": () {}
                                },
                                {
                                  "icon": Icons.stars_sharp,
                                  "text": "OVO Stamp",
                                  "onTap": () {}
                                },
                                {
                                  "icon": Icons.add_link_rounded,
                                  "text": "Aplikasi Terhubung",
                                  "onTap": () {}
                                },
                                {
                                  "icon": Icons.card_membership_sharp,
                                  "text": "My Cards",
                                  "onTap": () {}
                                },
                              ];
                              return SizedBox(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: listButton.map(
                                    (item) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: InkWell(
                                          onTap: () {
                                            item["onTap"];
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: AppColors.greyBg,
                                                ),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        item["icon"],
                                                        color: Colors.black54,
                                                      ),
                                                      SizedBox(width: 15),
                                                      Text(
                                                        item["text"],
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                          color: AppColors
                                                              .blackText,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                item["text"] != "OVO Stamp"
                                                    ? const Icon(
                                                        Icons.arrow_forward_ios,
                                                        size: 18,
                                                      )
                                                    : Container(),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ).toList(),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 8,
                          color: AppColors.greyBg,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 15),
                          child: Text(
                            "Bantuan",
                            style: TextStyle(
                              color: AppColors.blackText,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Builder(
                            builder: (context) {
                              List listButton = [
                                {
                                  "icon": Icons.help,
                                  "text": "Pusat Bantuan",
                                  "onTap": () {}
                                },
                              ];
                              return SizedBox(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: listButton.map(
                                    (item) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: InkWell(
                                          onTap: () {
                                            item["onTap"];
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: AppColors.greyBg,
                                                ),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        item["icon"],
                                                        color: Colors.black54,
                                                      ),
                                                      SizedBox(width: 15),
                                                      Text(
                                                        item["text"],
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                          color: AppColors
                                                              .blackText,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                item["text"] != "OVO Stamp"
                                                    ? const Icon(
                                                        Icons.arrow_forward_ios,
                                                        size: 18,
                                                      )
                                                    : Container(),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ).toList(),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 8,
                          color: AppColors.greyBg,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 15),
                          child: Text(
                            "Keamanan",
                            style: TextStyle(
                              color: AppColors.blackText,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Builder(
                            builder: (context) {
                              List listButton = [
                                {
                                  "icon": Icons.lock_outline,
                                  "text": "Pusat Bantuan",
                                  "onTap": () {}
                                },
                              ];
                              return SizedBox(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: listButton.map(
                                    (item) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: InkWell(
                                          onTap: () {
                                            item["onTap"];
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: AppColors.greyBg,
                                                ),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        item["icon"],
                                                        color: Colors.black54,
                                                      ),
                                                      SizedBox(width: 15),
                                                      Text(
                                                        item["text"],
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                          color: AppColors
                                                              .blackText,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                item["text"] != "OVO Stamp"
                                                    ? const Icon(
                                                        Icons.arrow_forward_ios,
                                                        size: 18,
                                                      )
                                                    : Container(),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ).toList(),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 8,
                          color: AppColors.greyBg,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 15),
                          child: Text(
                            "Tentang",
                            style: TextStyle(
                              color: AppColors.blackText,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Builder(
                            builder: (context) {
                              List listButton = [
                                {
                                  "icon": Icons.stars_outlined,
                                  "text": "Keuntungan Pakai OVO",
                                  "onTap": () {}
                                },
                                {
                                  "icon": Icons.lightbulb_circle_rounded,
                                  "text": "Panjuan OVO",
                                  "onTap": () {}
                                },
                                {
                                  "icon": Icons.list_alt_sharp,
                                  "text": "Syarat dan Ketentuan",
                                  "onTap": () {}
                                },
                                {
                                  "icon": Icons.verified_user_sharp,
                                  "text": "Kebijakan Privasi",
                                  "onTap": () {}
                                },
                              ];
                              return SizedBox(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: listButton.map(
                                    (item) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: InkWell(
                                          onTap: () {
                                            item["onTap"];
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: AppColors.greyBg,
                                                ),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        item["icon"],
                                                        color: Colors.black54,
                                                      ),
                                                      SizedBox(width: 15),
                                                      Text(
                                                        item["text"],
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                          color: AppColors
                                                              .blackText,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                item["text"] != "OVO Stamp"
                                                    ? const Icon(
                                                        Icons.arrow_forward_ios,
                                                        size: 18,
                                                      )
                                                    : Container(),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ).toList(),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          color: AppColors.greyBg,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15.0, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Version 3.70.1(412)",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "#pakeOVOaja",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: AppColors.purple,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Sign Out",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.whiteText,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }
              }, // Number of widgets + separator containers
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
