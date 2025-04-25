import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  Size(411, 914),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            appBarTheme:  AppBarTheme(
              backgroundColor: Colors.red,
              centerTitle: true,
              elevation: 0,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 30.sp,
              ),
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
            ),
            scaffoldBackgroundColor: const Color(0xFF292930),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: CircleBorder(),
            ),
          ),
          home: MainPage(),
        );
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MovieEvo'),
        ),
        body: const Center(child: Text('hello')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.search),
        ),
      );
  }
}