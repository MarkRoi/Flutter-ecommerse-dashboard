import 'package:ecommerce_dashboard/screens/dashboard/dashboard_screen.dart';
import 'package:ecommerce_dashboard/screens/main/components/side_menu.dart';
import 'package:ecommerce_dashboard/screens/main/provider/main_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SideMenu(),
              ),
              Consumer<MainScreenProvider>(
                builder: (context, provider, child) {
                  return Expanded(
                    flex: 5,
                    child: provider.selectedScreen ?? DashboardScreen(),
                  );
                },
              ),],
        ),
      ),
    );
  }
}
