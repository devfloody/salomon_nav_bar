import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/data_controller.dart';

class DataView extends GetView<DataController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'DataView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
