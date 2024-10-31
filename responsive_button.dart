import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width, this.isResponsive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Color.fromRGBO(153, 18, 18, 1.0)
        // color:  //Color.fromRGBO(78, 113, 219, 1.0)
        //Color.fromRGBO(153, 18, 18, 1.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/img/bttn.png"),
        ],
      ),

    );
  }
}

// export PATH="$PATH:/Users/neha/documents/flutter/bin"
