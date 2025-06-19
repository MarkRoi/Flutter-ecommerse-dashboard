import 'package:ecommerce_dashboard/screens/category/category_screen.dart';
import 'package:ecommerce_dashboard/screens/dashboard/dashboard_screen.dart';
import 'package:ecommerce_dashboard/screens/main/provider/main_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: 250,
      // color: Color(0xFF2A2A2A),
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () {
              // Navigate to Dashboard
              context.read<MainScreenProvider>().setScreen(DashboardScreen());
            },
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Category'),
            onTap: () {
              context.read<MainScreenProvider>().setScreen(CategoryScreen());
            },
          ),
          ListTile(
            leading: Icon(Icons.subdirectory_arrow_right),
            title: Text('Sub Category'),
          ),
          ListTile(
            leading: Icon(Icons.branding_watermark),
            title: Text('Brands'),
          ),
          ListTile(
            leading: Icon(Icons.style),
            title: Text('Variant Type'),
          ),
          ListTile(
            leading: Icon(Icons.format_list_numbered),
            title: Text('Variants'),
          ),
          ListTile(
            leading: Icon(Icons.reorder),
            title: Text('Orders'),
          ),
          ListTile(
            leading: Icon(Icons.abc_outlined),
            title: Text('Coupons'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
          ),
        ],
      ),
    );
  }
}