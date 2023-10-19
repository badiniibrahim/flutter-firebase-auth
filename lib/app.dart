import 'package:flutter/cupertino.dart';
import 'package:flutter_firebase_setup/routes/app_pages.dart';
import 'package:get/route_manager.dart';

class App extends StatelessWidget {
  final String initialRoute;
  const App({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Firebase Test",
      getPages: AppPages.routes,
      initialRoute: initialRoute,
    );
  }
}
