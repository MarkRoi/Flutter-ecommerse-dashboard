import '../../../utility/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  String _activeMenu = 'Dashboard';

  void _onMenuTap(String menu) {
    setState(() {
      _activeMenu = menu;
    });
    context.mainScreenProvider.navigateToScreen(menu);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo_2.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashboard.svg",
            isActive: _activeMenu == 'Dashboard',
            press: () => _onMenuTap('Dashboard'),
          ),
          DrawerListTile(
            title: "Category",
            svgSrc: "assets/icons/menu_tran.svg",
            isActive: _activeMenu == 'Category',
            press: () => _onMenuTap('Category'),
          ),
          DrawerListTile(
            title: "Sub Category",
            svgSrc: "assets/icons/menu_task.svg",
            isActive: _activeMenu == 'SubCategory',
            press: () => _onMenuTap('SubCategory'),
          ),
          DrawerListTile(
            title: "Brands",
            svgSrc: "assets/icons/menu_doc.svg",
            isActive: _activeMenu == 'Brands',
            press: () => _onMenuTap('Brands'),
          ),
          DrawerListTile(
            title: "Variant Type",
            svgSrc: "assets/icons/menu_store.svg",
            isActive: _activeMenu == 'VariantType',
            press: () => _onMenuTap('VariantType'),
          ),
          DrawerListTile(
            title: "Variants",
            svgSrc: "assets/icons/menu_notification.svg",
            isActive: _activeMenu == 'Variants',
            press: () => _onMenuTap('Variants'),
          ),
          DrawerListTile(
            title: "Orders",
            svgSrc: "assets/icons/menu_profile.svg",
            isActive: _activeMenu == 'Order',
            press: () => _onMenuTap('Order'),
          ),
          DrawerListTile(
            title: "Coupons",
            svgSrc: "assets/icons/menu_setting.svg",
            isActive: _activeMenu == 'Coupon',
            press: () => _onMenuTap('Coupon'),
          ),
          DrawerListTile(
            title: "Posters",
            svgSrc: "assets/icons/menu_doc.svg",
            isActive: _activeMenu == 'Poster',
            press: () => _onMenuTap('Poster'),
          ),
          DrawerListTile(
            title: "Notifications",
            svgSrc: "assets/icons/menu_notification.svg",
            isActive: _activeMenu == 'Notifications',
            press: () => _onMenuTap('Notifications'),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(
          isActive ? Colors.white : Colors.white54,
          BlendMode.srcIn,
        ),
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.white54,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      tileColor: isActive ? Colors.blue.withOpacity(0.2) : Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}