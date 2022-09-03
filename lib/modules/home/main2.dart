import 'package:Mnrega/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '/routes/app_pages.dart';

void main2() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
