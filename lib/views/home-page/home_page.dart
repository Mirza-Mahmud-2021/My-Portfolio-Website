import 'package:flutter/material.dart';
import 'package:my_portfolio/components/app_colors.dart';
import 'package:my_portfolio/views/home-page/home-page-sections/top_section.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColors.bgColor,
      body: SafeArea(

        child: SingleChildScrollView(

          child: Column(

            children: const [

              TopSection()
            ],
          ),
        ),
      ),
    );
  }
}
