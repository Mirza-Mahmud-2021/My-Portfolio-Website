import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/components/app_colors.dart';
import 'package:my_portfolio/views/home-page/home_page.dart';

class LoadingPage extends StatefulWidget {

  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  
  @override
  void initState() {
    
    Timer(
      
      const Duration(seconds: 3),(){
        
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
      }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColors.bgColor,
      body: Stack(

        children: [
          
          Align(
            alignment: Alignment.center,
            child: SizedBox(

              height: 250, width: 250,
              child: Lottie.asset(

                  "assets/animations/loading.json"
              ),
            ),
          ),
        ]
      ),
    );
  }
}
