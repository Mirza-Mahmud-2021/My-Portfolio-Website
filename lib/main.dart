import 'package:flutter/material.dart';
import 'package:my_portfolio/views/home-page/home_page.dart';
import 'package:my_portfolio/views/loading-page/loading_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main(){

  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {

  const MyPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "My Portfolio",
      builder: (context, child) => ResponsiveWrapper.builder(

        BouncingScrollWrapper.builder(context, child!),
        maxWidth: 1920,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [

          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1920, name: DESKTOP),
        ],
      ),
      home: const HomePage()//const LoadingPage(),
    );
  }
}
