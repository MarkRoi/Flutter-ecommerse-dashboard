
import 'package:ecommerce_dashboard/screens/brands/brand_screen.dart';
import 'package:ecommerce_dashboard/screens/sub_category/sub_category_screen.dart';
import 'package:ecommerce_dashboard/screens/variants/variants_screen.dart';

import '../../category/category_screen.dart';
import '../../dashboard/dashboard_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MainScreenProvider extends ChangeNotifier{
  Widget selectedScreen = DashboardScreen();



  navigateToScreen(String screenName) {
    switch (screenName) {
      case 'Dashboard':
        selectedScreen = DashboardScreen();
        break; // Break statement needed here
      case 'Category':
        selectedScreen = CategoryScreen();
        break;
      case 'SubCategory':
        selectedScreen = SubCategoryScreen();
        break;
      case 'Brands':
        selectedScreen = BrandScreen();
        break;
      // case 'VariantType':
      //   selectedScreen = VariantsTypeScreen();
      //   break;
      case 'Variants':
        selectedScreen = VariantsScreen();
        break;
      // case 'Coupon':
      //   selectedScreen = CouponCodeScreen();
      //   break;
      // case 'Poster':
      //   selectedScreen = PosterScreen();
      //   break;
      // case 'Order':
      //   selectedScreen = OrderScreen();
      //   break;
      // case 'Notifications':
      //   selectedScreen = NotificationScreen();
      //   break;
      default:
        selectedScreen = DashboardScreen();
    }
    notifyListeners();
  }
  
  
}