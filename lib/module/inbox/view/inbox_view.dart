import 'package:flutter/material.dart';
import 'package:ovo/core.dart';
import '../controller/inbox_controller.dart';

class InboxView extends StatefulWidget {
  const InboxView({Key? key}) : super(key: key);

  Widget build(context, InboxController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            controller: controller.tabController,
            tabs: [
              Tab(text: "Notifikasi"),
              Tab(text: "Pesan"),
            ],
          ),
          title: const Text(
            "Notifications",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.blackText,
            ),
          ),
          actions: const [],
        ),
        body: TabBarView(
          controller: controller.tabController,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notification_important,
                    size: 50,
                    color: AppColors.greyId,
                  ),
                  Text(
                    "Tidak ada notifikasi untuk saat ini",
                    style: TextStyle(
                      color: AppColors.greyId,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.message,
                    size: 50,
                    color: AppColors.greyId,
                  ),
                  Text(
                    "Tidak ada pesan untuk saat ini",
                    style: TextStyle(
                      color: AppColors.greyId,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<InboxView> createState() => InboxController();
}
