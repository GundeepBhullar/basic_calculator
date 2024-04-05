import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grid/widgets/roundedButton.dart';
import 'package:grid/ui_helper/textStyle.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Practice',
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   // const MyHomePage({super.key, key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//
//         backgroundColor: Theme
//             .of(context)
//             .colorScheme
//             .inversePrimary,
//
//         title: Text('Grid View'),
//       ),
//       body:
//     );
//   }
// }

void main(){
  runApp( const MyApp());
}
 class MyApp extends StatelessWidget {
  const MyApp ({super.key});
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Flutter App',
       theme: ThemeData(
           primarySwatch: Colors.blue
       ),
       debugShowCheckedModeBanner: false,
       home: MyHomePage(),
     );
   }
 }

 class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
 }
 class MyHomePageState extends State<MyHomePage> {

   final no1Controller = TextEditingController();
   final no2Controller = TextEditingController();
   var result = '';


   @override
   Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('StateFull Widget Testing'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue[100],
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text( result,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                )
              ),


              TextField(
                keyboardType: TextInputType.number,
                controller: no1Controller ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ),


              SizedBox(
                height: 11,
              ),


              TextField(
                keyboardType: TextInputType.number,
                controller: no2Controller ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      width: 5
                    ),
                  ),
                ),
              ),


              SizedBox(
                height: 25,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  CalciButton(
                    calciText: 'Add',
                    calciColor: Colors.red,
                    calciFunction: () {
                     var no1 = int.parse(no1Controller.text.toString());
                     var no2 = int.parse(no2Controller.text.toString());

                     var Sum = no1 + no2;
                     result = 'By adding $no1 and $no2 we get $Sum ';
                     setState(() {});
                     },
                  ),

                  CalciButton(
                    calciColor: Colors.red,
                    calciText: 'Sub',
                    calciFunction: () {
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var Sub = no1 - no2;
                      result = ' By removing $no2 from $no1 we get $Sub';
                      setState(() {});
                      },
                  ),
                  CalciButton(
                    calciText: 'Mult',
                    calciColor: Colors.red,
                    calciFunction: () {
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var Mult = no1 * no2;
                      result = '$no1 Times $no2 si equal to $Mult';
                      setState(() {});
                    },
                  ),

                  CalciButton(
                    calciColor: Colors.red,
                    calciText: 'Divi',
                    calciFunction: () {
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var divi = no1/no2;
                      result = '$no1 Divided by $no2 is equal to ${divi.toStringAsFixed(3)}';
                      setState(() {});
                    },
                  ),
                  // ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //       backgroundColor: Colors.blue,
                  //     ),
                  //     onPressed: () {
                  //
                  //       setState(() {
                  //         var no1 = int.parse(no1Controller.text.toString());
                  //         var no2 = int.parse(no2Controller.text.toString());
                  //
                  //         var Sum = no1 + no2 ;
                  //         result = 'By Adding $no1 and $no2 we get $Sum';
                  //       });
                  //     },
                  //     child: Text('Add',
                  //     style: TextStyle(
                  //       fontSize: 20,
                  //       color: Colors.white
                  //     ),)
                  // ),
                  //
                  //
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.blue
                  //   ),
                  //   onPressed: () {
                  //     var no1 = int.parse(no1Controller.text.toString());
                  //     var no2 = int.parse(no2Controller.text.toString());
                  //
                  //     var diff = no1 - no2 ;
                  //
                  //     result = 'By removing $no2 from $no1 we get $diff';
                  //
                  //     setState(() {});
                  //
                  //     },
                  //   child: Text('Sub',
                  //     style: TextStyle(
                  //       fontSize: 20,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  //
                  // ),
                  //
                  //
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.blue,
                  //   ),
                  //   onPressed: () {
                  //     var no1 = int.parse(no1Controller.text.toString());
                  //     var no2 = int.parse(no2Controller.text.toString());
                  //
                  //     var product = no1 * no2 ;
                  //     result = '$no1 times $no2 is $product';
                  //
                  //     setState(() {});
                  //   },
                  //   child: Text('Mult',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 20,
                  //   ),
                  //   ),
                  // ),



                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.blue,
                  //   ),
                  //   onPressed: () {
                  //     var no1 = int.parse(no1Controller.text.toString());
                  //     var no2 = int.parse(no2Controller.text.toString());
                  //
                  //     var div = no1/no2 ;
                  //     result = '$no1 divided by $no2 is equal to ${div.toStringAsFixed(2)}';
                  //     setState(() {} );
                  //   },
                  //   child: Text('Div',
                  //    style: TextStyle(
                  //      fontSize: 20,
                  //      color: Colors.white
                  //    ),
                  //   ),
                  // ),
                ]
              ),
            ],
          ),
        ),
      ),
    );
   }
 }
