import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:test_app/widgets/app_large_text.dart';
//import 'package:test_app/widgets/app_text.dart';
import 'package:test_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "01.png",
    "02.2.png",
    "03.2.png"
  ];

  List text = [
    "Welcome to",
    "Learn",
    "Find Clinics"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index){
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/img/"+images[index]
              ),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            margin: const EdgeInsets.only(top:110, left:30, right:20),
            child:Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargeText(text: text[index]),
                    
                    // AppText(text: "exlpore, reinvent, commence!") add another text if desired (thinner font).. not necessary
                    //SizedBox(height: 20)
                    // Container(
                    //   width: 250,
                    //   child: AppText(
                    //     text: "learn more in this navigation app that helps locals find nearby clinics", color: AppColors.textColor2, size: 14
                    //     ),
                    //   )
                    SizedBox(height: 40), //might need to remove const
                    ResponsiveButton()
                  ],
                )
              ],
            )
          ),
        );

      }),
    );
  }
}