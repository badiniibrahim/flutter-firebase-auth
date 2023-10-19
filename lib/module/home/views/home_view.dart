import 'package:flutter/material.dart';
import 'package:flutter_firebase_setup/module/home/controller/home_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        initState: (state) {},
        builder: (_) {
          return Scaffold(
            body: Center(
              child: InkWell(
                onTap: () {
                  controller.signOut();
                },
                child: Text("HomeView"),
              ),
            ),
          );
        });
  }
}
