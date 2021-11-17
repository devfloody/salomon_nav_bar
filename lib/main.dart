import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tugas_akhir/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "QR Attendance",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: color.primary,
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
