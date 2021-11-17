import 'package:get/get.dart';

import 'package:tugas_akhir/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:tugas_akhir/app/modules/dashboard/views/dashboard_view.dart';
import 'package:tugas_akhir/app/modules/data/bindings/data_binding.dart';
import 'package:tugas_akhir/app/modules/data/views/data_view.dart';
import 'package:tugas_akhir/app/modules/history/bindings/history_binding.dart';
import 'package:tugas_akhir/app/modules/history/views/history_view.dart';
import 'package:tugas_akhir/app/modules/home/bindings/home_binding.dart';
import 'package:tugas_akhir/app/modules/home/views/home_view.dart';
import 'package:tugas_akhir/app/modules/profile/bindings/profile_binding.dart';
import 'package:tugas_akhir/app/modules/profile/views/profile_view.dart';
import 'package:tugas_akhir/app/modules/schedule/bindings/schedule_binding.dart';
import 'package:tugas_akhir/app/modules/schedule/views/schedule_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.SCHEDULE,
      page: () => ScheduleView(),
      binding: ScheduleBinding(),
    ),
    GetPage(
      name: _Paths.DATA,
      page: () => DataView(),
      binding: DataBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
  ];
}
