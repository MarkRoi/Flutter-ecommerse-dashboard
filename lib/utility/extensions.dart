

import 'package:ecommerce_dashboard/core/data/data_provider.dart';
import 'package:ecommerce_dashboard/screens/category/provider/category_provider.dart';
import 'package:ecommerce_dashboard/screens/main/provider/main_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension Providers on BuildContext {
  DataProvider get dataProvider => Provider.of<DataProvider>(this, listen: false);
  MainScreenProvider get mainScreenProvider => Provider.of<MainScreenProvider>(this, listen: false);
  CategoryProvider get categoryProvider => Provider.of<CategoryProvider>(this, listen: false);
  // SubCategoryProvider get subCategoryProvider => Provider.of<SubCategoryProvider>(this, listen: false);
  // BrandProvider get brandProvider => Provider.of<BrandProvider>(this, listen: false);
  // VariantsTypeProvider get variantTypeProvider => Provider.of<VariantsTypeProvider>(this, listen: false);
  // VariantsProvider get variantProvider => Provider.of<VariantsProvider>(this, listen: false);
  // DashBoardProvider get dashBoardProvider => Provider.of<DashBoardProvider>(this, listen: false);
  // CouponCodeProvider get couponCodeProvider => Provider.of<CouponCodeProvider>(this, listen: false);
  // PosterProvider get posterProvider => Provider.of<PosterProvider>(this, listen: false);
  // OrderProvider get orderProvider => Provider.of<OrderProvider>(this, listen: false);
  // NotificationProvider get notificationProvider => Provider.of<NotificationProvider>(this, listen: false);
}