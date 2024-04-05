import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:grid/main.dart';

// class RoundedButton extends StatelessWidget {
//   final String BtName;
//   final Color? BtColor;
//   final Icon? BtIcon;
//   final TextStyle? BtStyle;
//   final VoidCallback? BtFnction;
//
//
//   RoundedButton({
//     required this.BtName,
//     this.BtColor = Colors.purpleAccent,
//     this.BtIcon,
//     this.BtStyle,
//     this.BtFnction
//   });
//
//   @override
//   Widget build(BuildContext context) {
//    return ElevatedButton(
//        onPressed: () {
//          BtFnction!();
//        },
//        child: BtIcon!=null ? Row(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: [BtIcon!,
//            SizedBox(width: 4),
//            Text(BtName, style: BtStyle)
//          ]
//
//        ) : Text(BtName, style: BtStyle,),
//      style: ElevatedButton.styleFrom(
//        shape: RoundedRectangleBorder(
//            borderRadius: BorderRadius.only(
//                bottomRight:Radius.circular(11),
//                topLeft:Radius.circular(11)
//            ),
//        ),
//        backgroundColor: BtColor
//      ),
//    );
//   }
//
// }


class CalciButton extends StatelessWidget{

  final String? calciText;
  final Color? calciColor;
  VoidCallback? calciFunction;



  CalciButton({
      this.calciText,
      this.calciColor,
      this.calciFunction,

  });

  @override


  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: calciColor),

        onPressed: calciFunction,
        child: Text(calciText!,
        style: TextStyle( color: Colors.white,
        fontSize: 20
        ),)

    );
  }

}




