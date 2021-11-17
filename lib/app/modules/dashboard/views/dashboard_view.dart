import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:tugas_akhir/app/modules/data/views/data_view.dart';
import 'package:tugas_akhir/app/modules/history/views/history_view.dart';
import 'package:tugas_akhir/app/modules/home/views/home_view.dart';
import 'package:tugas_akhir/app/modules/profile/views/profile_view.dart';
import 'package:tugas_akhir/app/modules/schedule/views/schedule_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.currentIndex,
              children: [
                HomeView(),
                HistoryView(),
                ScheduleView(),
                DataView(),
                ProfileView(),
              ],
            ),
          ),
          bottomNavigationBar: SalomonBottomBar(
            currentIndex: controller.currentIndex,
            onTap: controller.changeIndex,
            items: [
              SalomonBottomBarItem(
                icon: Icon(Iconsax.home_2),
                title: Text("Home"),
                selectedColor: Colors.purple,
              ),
              SalomonBottomBarItem(
                icon: Icon(Iconsax.clock),
                title: Text("History"),
                selectedColor: Colors.pink,
              ),
              SalomonBottomBarItem(
                icon: Icon(Iconsax.calendar_2),
                title: Text("Schedule"),
                selectedColor: Colors.orange,
              ),
              SalomonBottomBarItem(
                icon: Icon(Iconsax.graph),
                title: Text("Data"),
                selectedColor: Colors.teal,
              ),
              SalomonBottomBarItem(
                icon: Icon(Iconsax.user),
                title: Text("Profile"),
                selectedColor: Colors.blue,
              ),
            ],
          ),
        );
      },
    );
  }
}
