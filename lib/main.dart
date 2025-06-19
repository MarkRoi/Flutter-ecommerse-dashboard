import 'package:ecommerce_dashboard/screens/main/main_screen.dart';
import 'package:ecommerce_dashboard/screens/main/provider/main_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainScreenProvider()),
      ],
      child: MaterialApp(
        debugShowMaterialGrid: false,
        title: 'Flutter Admin Dashboard',
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Color(0xFF1A1A1A),
        ),
        home: MainScreen(),
      ),
    );
  }
}