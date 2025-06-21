import 'package:ecommerce_dashboard/core/data/data_provider.dart';
import 'package:ecommerce_dashboard/core/routes/app_pages.dart';
import 'package:ecommerce_dashboard/screens/brands/provider/brand_provider.dart';
import 'package:ecommerce_dashboard/screens/category/provider/category_provider.dart';
import 'package:ecommerce_dashboard/screens/coupon_code/provider/coupon_code_provider.dart';
import 'package:ecommerce_dashboard/screens/dashboard/provider/dash_board_provider.dart';
import 'package:ecommerce_dashboard/screens/main/main_screen.dart';
import 'package:ecommerce_dashboard/screens/main/provider/main_screen_provider.dart';
import 'package:ecommerce_dashboard/screens/notification/provider/notification_provider.dart';
import 'package:ecommerce_dashboard/screens/order/provider/order_provider.dart';
import 'package:ecommerce_dashboard/screens/posters/provider/poster_provider.dart';
import 'package:ecommerce_dashboard/screens/sub_category/provider/sub_category_provider.dart';
import 'package:ecommerce_dashboard/screens/variants/provider/variant_provider.dart';
import 'package:ecommerce_dashboard/screens/variants_type/provider/variant_type_provider.dart';
import 'package:ecommerce_dashboard/utility/constants.dart';
import 'package:ecommerce_dashboard/utility/extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DataProvider()),
        ChangeNotifierProvider(create: (context) => MainScreenProvider()),
        ChangeNotifierProvider(
          create: (context) => DashBoardProvider(context.dataProvider),
        ),
        ChangeNotifierProvider(
          create: (context) => CategoryProvider(context.dataProvider),
        ),
        ChangeNotifierProvider(
          create: (context) => SubCategoryProvider(context.dataProvider),
        ),
        ChangeNotifierProvider(
          create: (context) => BrandProvider(context.dataProvider),
        ),
        ChangeNotifierProvider(create: (context) => VariantsTypeProvider(context.dataProvider)),
        ChangeNotifierProvider(
          create: (context) => VariantsProvider(context.dataProvider),
        ),
        ChangeNotifierProvider(create: (context) => CouponCodeProvider(context.dataProvider)),
        ChangeNotifierProvider(create: (context) => PosterProvider(context.dataProvider)),
        ChangeNotifierProvider(create: (context) => OrderProvider(context.dataProvider)),
        ChangeNotifierProvider(create: (context) => NotificationProvider(context.dataProvider)),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ).apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      initialRoute: AppPages.HOME,
      unknownRoute: GetPage(name: '/notFount', page: () => MainScreen()),
      defaultTransition: Transition.cupertino,
      getPages: AppPages.routes,
    );
  }
}
