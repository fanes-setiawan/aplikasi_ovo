import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ovo/utils/colors.dart';

class TabBarMenu extends StatefulWidget {
  const TabBarMenu({super.key});

  @override
  State<TabBarMenu> createState() => _TabBarMenuState();
}

class _TabBarMenuState extends State<TabBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TabBar(
            labelPadding: EdgeInsets.zero,
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            dividerColor: Colors.transparent,
            indicatorWeight: 0,
            enableFeedback: false,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BubbleTabIndicator(
              indicatorHeight: 30.0,
              indicatorColor: AppColors.purpleButton,
            ),
            tabs: [
              Tab(text: "Favorite"),
              Tab(text: "Pilihan Lain"),
              Tab(text: "Grab"),
              Tab(text: "Finansial"),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: TabBarView(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: LayoutBuilder(
                  builder: (context, constraint) {
                    List menus = [
                      {
                        "icon": "assets/icons/pulsa_icon.svg",
                        "label": "Pulsa/Paket\nData",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/pln_icon.svg",
                        "label": "PLN",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/air_icon.svg",
                        "label": "Air PDAM",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/Pascabayar.svg",
                        "label": "Pascabayar",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/bpjs_icon.svg",
                        "label": "BPJS\nKesehatan",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/KartuDebit.svg",
                        "label": "Pajak PBB",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/internet_icon.svg",
                        "label": "Internet & TV\nKabel",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/kredit_icon.svg",
                        "label": "Angsuran\nKredit",
                        "onTap": () {},
                      },
                    ];

                    return Wrap(
                      children: List.generate(
                        menus.length,
                        (index) {
                          var item = menus[index];

                          var size = constraint.biggest.width / 4;

                          return SizedBox(
                            width: size,
                            height: size,
                            child: InkWell(
                              onTap: () => item["onTap"](),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    item["icon"],
                                    width: 30.0,
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    "${item["label"]}",
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: LayoutBuilder(
                  builder: (context, constraint) {
                    List menus = [
                      {
                        "icon": "assets/icons/paketdata_icon.svg",
                        "label": "Telkom",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/iuran_icon.svg",
                        "label": "Iuran\nLingkungan",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/KartuDebit.svg",
                        "label": "Penerimaan\nNegara",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/Bank.svg",
                        "label": "Pendidikan",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/mobilebanking.svg",
                        "label": "Angsuran\nKredit",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/deals.svg",
                        "label": "Voucher\nGames",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/kredit_icon.svg",
                        "label": "Donasi",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/lainnya_icon.svg",
                        "label": "Lainnya",
                        "onTap": () {},
                      },
                    ];

                    return Wrap(
                      children: List.generate(
                        menus.length,
                        (index) {
                          var item = menus[index];

                          var size = constraint.biggest.width / 4;

                          return SizedBox(
                            width: size,
                            height: size,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.blueGrey,
                                animationDuration:
                                    const Duration(milliseconds: 1000),
                                backgroundColor: Colors.transparent,
                                splashFactory: InkSplash.splashFactory,
                                shadowColor: Colors.transparent,
                                elevation: 0.0,
                              ),
                              onPressed: () => item["onTap"](),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    item["icon"],
                                    width: 30.0,
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    "${item["label"]}",
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: LayoutBuilder(
                  builder: (context, constraint) {
                    List menus = [
                      {
                        "icon": "assets/icons/logograb.svg",
                        "label": "Food",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/logograb.svg",
                        "label": "Bike",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/logograb.svg",
                        "label": "Car",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/logograb.svg",
                        "label": "Mart",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/logograb.svg",
                        "label": "Express",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/logograb.svg",
                        "label": "Packages",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/logograb.svg",
                        "label": "Offers",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/logograb.svg",
                        "label": "Semua",
                        "onTap": () {},
                      },
                    ];

                    return Wrap(
                      children: List.generate(
                        menus.length,
                        (index) {
                          var item = menus[index];

                          var size = constraint.biggest.width / 4;

                          return SizedBox(
                            width: size,
                            height: size,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.blueGrey,
                                animationDuration:
                                    const Duration(milliseconds: 1000),
                                backgroundColor: Colors.transparent,
                                splashFactory: InkSplash.splashFactory,
                                shadowColor: Colors.transparent,
                                elevation: 0.0,
                              ),
                              onPressed: () => item["onTap"](),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    item["icon"],
                                    width: 30.0,
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    "${item["label"]}",
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: LayoutBuilder(
                  builder: (context, constraint) {
                    List menus = [
                      {
                        "icon": "assets/icons/KartuDebit.svg",
                        "label": "U Card",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/ovobooth.svg",
                        "label": "Proteksi",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/finance.svg",
                        "label": "Invest",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/bpjs_icon.svg",
                        "label": "Jiwa &\nKesehatan",
                        "onTap": () {},
                      },
                      {
                        "icon": "assets/icons/bpjs_icon.svg",
                        "label": "Solusi\nPelindungan",
                        "onTap": () {},
                      },
                    ];

                    return Wrap(
                      children: List.generate(
                        menus.length,
                        (index) {
                          var item = menus[index];

                          var size = constraint.biggest.width / 4;

                          return SizedBox(
                            width: size,
                            height: size,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.blueGrey,
                                animationDuration:
                                    const Duration(milliseconds: 1000),
                                backgroundColor: Colors.transparent,
                                splashFactory: InkSplash.splashFactory,
                                shadowColor: Colors.transparent,
                                elevation: 0.0,
                              ),
                              onPressed: () => item["onTap"](),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    item["icon"],
                                    width: 30.0,
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    "${item["label"]}",
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 11.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
