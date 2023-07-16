import 'package:flutter/material.dart';
import 'package:ovo/core.dart';

class LearnOvo extends StatefulWidget {
  const LearnOvo({super.key});

  @override
  State<LearnOvo> createState() => _LearnOvoState();
}

class _LearnOvoState extends State<LearnOvo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 220,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kenali OVO Lebih Dekat",
                      style: TextStyle(
                        color: AppColors.blackText,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Biarkan makin akrab,yuk cek tips berikut!",
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.greyText,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Tutup",
                    style: TextStyle(
                      color: Colors.cyan[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Builder(builder: (context) {
            List listButton = [
              {
                "image": "assets/images/topUp.jpeg",
                "text": "CARA TOP UP OVO CASH",
                "onTap": () {}
              },
              {
                "image": "assets/images/upgrade.jpeg",
                "text": "UPGRADE KE OVO PREMIER",
                "onTap": () {}
              },
              {
                "image": "assets/images/bayar.jpeg",
                "text": "CARA BAYAR PAKAI OVO",
                "onTap": () {}
              },
              {
                "image": "assets/images/transfer.jpeg",
                "text": "CARA TRANSFER PAKAI OVO",
                "onTap": () {}
              }
            ];
            return SizedBox(
              height: 160,
              child: SizedBox(
                height: 80.0,
                child: ListView.builder(
                  itemCount: listButton.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = listButton[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3 - 20,
                        height: 150,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                          color: AppColors.greyBg,
                          image: DecorationImage(
                              image: AssetImage(
                                item["image"],
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Positioned(
                              top: 10,
                              child: Container(
                                width: 80,
                                height: 40,
                                child: Text(
                                  item["text"],
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.purpleText,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
