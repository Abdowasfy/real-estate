import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/core/routing/router_generation.dart';
import 'package:real_estate/core/styling/theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
 
  runApp(const RealEstate());
}

class RealEstate extends StatelessWidget {
  const RealEstate({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Real Estate',
          theme: AppTheme.lightTheme,
          routerConfig: RouterGeneration.goRouter,
        );
      },
    );
  }
}