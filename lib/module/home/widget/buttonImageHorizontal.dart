import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ovo/core.dart';

class ButtonImageHorizontal extends StatefulWidget {
  const ButtonImageHorizontal({super.key});

  @override
  State<ButtonImageHorizontal> createState() => _ButtonImageHorizontalState();
}

class _ButtonImageHorizontalState extends State<ButtonImageHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Rekomendasi Pilihan",
              style: TextStyle(
                color: AppColors.blackText,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Builder(
            builder: (context) {
              List horizontalMenuList = [
                {
                  "image": "assets/images/27053.jpg",
                  "title": "Deals",
                  "text": "All Deals for You",
                  "ovo": "assets/icons/ovobooth.svg",
                  "onTap": () {}
                },
                {
                  "image": "assets/images/27122.jpg",
                  "title": "Alfamart",
                  "text": "Bayar di Alfamart Kini Bisa Pake OVO",
                  "ovo": "assets/icons/ovobooth.svg",
                  "onTap": () {}
                }
              ];

              return Container(
                height: 210.0,
                child: ListView.builder(
                  itemCount: horizontalMenuList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var item = horizontalMenuList[index];
                    return Container(
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 20,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey[100],
                                  image: DecorationImage(
                                      image: AssetImage(
                                        item["image"],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                item["title"],
                                style: TextStyle(
                                  fontSize: 11,
                                  color: AppColors.greyText,
                                ),
                              ),
                              Container(
                                child: Text(
                                  item["text"],
                                  style: TextStyle(
                                      color: AppColors.blackText, fontSize: 13),
                                ),
                              ),
                              SvgPicture.asset(item["ovo"])
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
