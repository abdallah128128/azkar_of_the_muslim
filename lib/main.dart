import 'package:azkar_of_the_muslim/shared/route.dart';
import 'package:azkar_of_the_muslim/shared/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          theme: lightMode,
          onGenerateRoute: (settings) => AppRouter.getRoutes(settings),
        );
      },
    );
  }
}
