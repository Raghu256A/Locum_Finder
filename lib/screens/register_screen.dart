import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:locumfinder/screens/verify_otp.dart';

import 'login_screen.dart';

class RegisterScreen extends StatefulWidget{
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterState();

}

class _RegisterState extends  State<RegisterScreen> {
  final TextEditingController mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: Center(
     child: SingleChildScrollView(
       child: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
           gradient: LinearGradient(
               begin: Alignment.topLeft,
               end: Alignment.bottomRight,
               colors: [
                 Color(0xFC07CEE8),
                 Color(0xFCCFEEF5),
                 Color(0xFC45D5DA),
               ]),
         ),
         padding: EdgeInsets.all(10.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Center(
               child: Container(
                 height: 330,
                 width: 335,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(15),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey,
                       blurRadius: 5.0,
                       spreadRadius: 1.0,
                     ),
                   ],
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     SizedBox(
                       height: 5.0,
                     ),
                     Image.asset(
                       "images/icon.jpg",
                       height: 50,
                       width: 240,
                     ),
                     SizedBox(
                       height: 5.0,
                     ),
                     Text(
                       "Please Register to continue",
                       style: TextStyle(fontSize: 16, color: Colors.grey),
                     ),
                     SizedBox(
                       height: 10.0,
                     ),
                     Container(
                       width: 250,
                       child: TextField(
                         controller: mobileNumberController,
                         keyboardType: TextInputType.phone,

                         inputFormatters: [FilteringTextInputFormatter.digitsOnly,
                           LengthLimitingTextInputFormatter(10),  // Set max length to 10
                         ],
                         
                         decoration: InputDecoration(
                           labelText: 'Mobile Number',
                           labelStyle:
                           TextStyle(fontSize: 15, color: Colors.black),
                           hintText: 'Enter your mobile number',
                           hintStyle:
                           TextStyle(fontSize: 12, color: Colors.grey),
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 10.0,
                     ),

                     SizedBox(height: 40.0,width: 200.0,
                       child:  ElevatedButton(
                         onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPScreen(),),);
                         },
                         style: ElevatedButton.styleFrom(
                             backgroundColor: Color(0xFC07CEE8),
                             elevation: 3,
                             shadowColor: Colors.grey[100],textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)
                         ),
                         child: Text('Send OTP',style: TextStyle(color: Colors.white,),),
                       ),
                     ),
                     SizedBox(height: 8,),

                     Text('or Register with',style: TextStyle(color: Colors.grey),),
                     SizedBox(height: 10,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         SizedBox(height: 40,width: 40,
                           child: ElevatedButton.icon(
                             onPressed: () {
                               // Handle login with Gmail logic
                             },
                             style: ElevatedButton.styleFrom(
                               padding: EdgeInsets.all(5),
                               backgroundColor: Color(0xFC07CEE8), // Background color
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(20), // Rounded corners
                               ),
                             ),
                             icon: Icon(FontAwesomeIcons.google,size: 22,color: Colors.white,),
                             label: Text(''),
                           ),),

                         SizedBox(width: 16.0),
                         SizedBox(height: 40,width: 40,
                           child: ElevatedButton.icon(
                             onPressed: () {
                               // Handle login with Gmail logic
                             },
                             style: ElevatedButton.styleFrom(
                               padding: EdgeInsets.all(5),
                               backgroundColor:Color(0xFC07CEE8), // Background color
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(20), // Rounded corners
                               ),
                             ),
                             icon: Icon(FontAwesomeIcons.apple,size: 22,color: Colors.white,),
                             label: Text(''),
                           ),),
                       ],
                     ),
                     SizedBox(height: 16.0),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Text('Already have an account?'),
                         GestureDetector(
                           onTap: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => LoginScreen()),
                             );
                           },
                           child: Text(
                             ' Login Now',
                             style: TextStyle(color: Color(0xFC07CEE8)),
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
               ),
             )
           ],
         ),
       ),
     ),
   ),
 );
  }
}
