import 'package:ecommerce_dashboard/core/data/data_provider.dart';
import 'package:ecommerce_dashboard/core/routes/app_pages.dart';
import 'package:ecommerce_dashboard/screens/main/main_screen.dart';
import 'package:ecommerce_dashboard/screens/main/provider/main_screen_provider.dart';
import 'package:ecommerce_dashboard/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => DataProvider()),
    ChangeNotifierProvider(create: (context) => MainScreenProvider()),
   
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      initialRoute: AppPages.HOME,
      unknownRoute: GetPage(name: '/notFount', page: () => MainScreen()),
      defaultTransition: Transition.cupertino,
      getPages: AppPages.routes,
    );
  }
}