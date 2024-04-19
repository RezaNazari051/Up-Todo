import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:up_todo/common/screens/main_wrapper.dart';
import 'package:up_todo/config/theme_data/app_theme.dart';
import 'package:up_todo/router.dart';

void main(List<String> args) {
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(

        routes: routeMethod(),
        initialRoute: '/',
        // home: const MainWrapper(),
        theme: CustomTheme.darkTheme,
        darkTheme: CustomTheme.darkTheme,
        themeMode: ThemeMode.dark,
      ),
    );
  }
}