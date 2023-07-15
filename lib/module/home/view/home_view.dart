import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ovo/core.dart';
import 'package:ovo/module/home/widget/carouselBanner.dart';
import 'package:ovo/module/home/widget/tabBarMenu.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;
    const collapsedBarHeight = 270.0;
    const expandedBarHeight = 245.0;

    return Scaffold(
      backgroundColor: AppColors.slBarColor,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: expandedBarHeight,
                // collapsedHeight: collapsedBarHeight,
                centerTitle: false,
                forceMaterialTransparency: true,
                pinned: true,
                title: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/logoovo.svg",
                        color: AppColors.purple,
                      ),
                      Container(
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
                          color: AppColors.whiteButton,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            elevation: 0,
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.verified),
                          label: Text("Promo"),
                        ),
                      )
                    ],
                  ),
                ),
                elevation: 0,
                flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    double containerHeight = constraints.maxHeight - 20;

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: containerHeight - 70,
                          width: MediaQuery.of(context).size.width - 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/bg.jpg",
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SingleChildScrollView(
                              controller: ScrollController(),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "OVOCash",
                                      style: TextStyle(
                                        color: AppColors.whiteText,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: [
                                        Text(
                                          "Total Saldo",
                                          style: TextStyle(
                                            color: AppColors.whiteText,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.visibility_off,
                                            color: AppColors.whiteButton,
                                            size: 16,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Rp ",
                                              style: TextStyle(
                                                color: AppColors.whiteText,
                                              ),
                                            ),
                                            Text(
                                              "unlimited ",
                                              style: TextStyle(
                                                  color: AppColors.whiteText,
                                                  fontStyle: FontStyle.italic),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 120,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: AppColors.whiteButton,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: ElevatedButton.icon(
                                            style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                              elevation: 0,
                                            ),
                                            onPressed: () {},
                                            icon: Icon(Icons.crisis_alert),
                                            label: Text(
                                              "OVO Points",
                                              style: TextStyle(
                                                color: AppColors.purpleText,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Builder(
                                    builder: (context) {
                                      List horizontalMenuList = [
                                        {
                                          "icon": Icons.add_circle,
                                          "label": "Top Up",
                                          "onTap": () {},
                                        },
                                        {
                                          "icon": Icons.arrow_circle_up_sharp,
                                          "label": "Transfer",
                                          "onTap": () {},
                                        },
                                        {
                                          "icon": Icons.archive,
                                          "label": "Tarik Tunai",
                                          "onTap": () {},
                                        },
                                        {
                                          "icon": Icons.article_sharp,
                                          "label": "History",
                                          "onTap": () {},
                                        },
                                      ];
                                      return SizedBox(
                                        height: 50.0,
                                        child: ListView.builder(
                                          itemCount: horizontalMenuList.length,
                                          scrollDirection: Axis.horizontal,
                                          semanticChildCount: 0,
                                          itemBuilder: (context, index) {
                                            var item =
                                                horizontalMenuList[index];
                                            return ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                fixedSize: Size(80, 20),
                                                padding: EdgeInsets.zero,
                                                foregroundColor:
                                                    AppColors.whiteButton,
                                                animationDuration:
                                                    const Duration(
                                                  milliseconds: 1000,
                                                ),
                                                backgroundColor:
                                                    Colors.transparent,
                                                splashFactory:
                                                    InkSplash.splashFactory,
                                                shadowColor: Colors.transparent,
                                                elevation: 0.0,
                                              ),
                                              onPressed: () {},
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    item["icon"],
                                                    color:
                                                        AppColors.whiteButton,
                                                  ),
                                                  const SizedBox(
                                                    height: 4.0,
                                                  ),
                                                  Text(
                                                    item["label"],
                                                    textAlign: TextAlign.center,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                      color:
                                                          AppColors.whiteText,
                                                      fontSize: 13.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight:
                        MediaQuery.of(context).size.height - collapsedBarHeight,
                  ),
                  child: Material(
                    elevation: 7,
                    color: AppColors.whiteButton,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        TabBarMenu(),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 8,
                          color: AppColors.greyBg,
                        ),
                        CarouselBanner(),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 8,
                          color: AppColors.greyBg,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
