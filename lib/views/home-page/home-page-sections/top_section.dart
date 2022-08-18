import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/components/app_colors.dart';

class TopSection extends StatefulWidget {

  const TopSection({Key? key}) : super(key: key);

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {

    return Container(

      height: 450, width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(

        color: AppColors.topContainerBgColor,
        borderRadius: const BorderRadius.only(

            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30)
        )
      ),
      child: Stack(

        children: [

          // logo & name
          Positioned(

            top: 20,
            left: 100,
            child: Row(

              children: [

                Container(

                  height: 75, width: 75,
                  decoration: const BoxDecoration(

                      shape: BoxShape.circle,
                      image: DecorationImage(

                          image: AssetImage("assets/images/my-logo.png"),
                          fit: BoxFit.fill
                      )
                  ),
                ),
                const SizedBox(width: 10),

                Text(

                  "Mirza Mahmud Hossan",
                  style: GoogleFonts.nunito(color: Colors.white70, fontSize: 18, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),

          // hi message
          Positioned(

            top: 140,
            left: 100,
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(

                  "Hi There!", style: GoogleFonts.nunito(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
                ),
                const SizedBox(width: 10)
              ],
            ),
          ),

          // toy animation
          Positioned(

            top: 90,
            left: 220,
            child: SizedBox(

              height: 80, width: 80,
              child: Lottie.asset("assets/animations/hi.json"),
            ),
          ),

          // introduce my work
          Positioned(

            top: 200,
            left: 100,
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                RichText(

                  text: TextSpan(

                    children: [

                      TextSpan(

                        text: "I'm  ",
                        style: GoogleFonts.nunito(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22)
                      ),
                      TextSpan(

                          text: "Mirza Mahmud Hossan",
                          style: GoogleFonts.nunito(color: Colors.amber, fontWeight: FontWeight.w500, fontSize: 22)
                      )
                    ]
                  ),
                ),
                const SizedBox(height: 20),

                DefaultTextStyle(

                  style: GoogleFonts.nunito(color: Colors.amber, fontSize: 30, fontWeight: FontWeight.w500),
                  child: AnimatedTextKit(

                    repeatForever: true,
                    animatedTexts: [

                      TyperAnimatedText('Software Developer'),
                      TyperAnimatedText("Front End Developer"),
                      TyperAnimatedText('Mobile Application Developer'),
                    ]
                  ),
                )
              ],
            ),
          ),

          // work animation
          Align(
            
            alignment: Alignment.centerRight,
            child: SizedBox(
              
              height: 450, width: 450,
              child: Lottie.asset("assets/animations/work.json"),
            ),
          )
        ],
      ),
    );
  }
}
