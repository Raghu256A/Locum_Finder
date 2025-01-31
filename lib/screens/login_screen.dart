import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:locumfinder/apptextformfield.dart';
import 'package:locumfinder/screens/register_screen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    bool isWeb = kIsWeb;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "images/bg1.jpg"
                  ),
                fit: BoxFit.cover
              ),
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
                    height: 350.0,
                    width: 280.0,
               decoration: isWeb?  BoxDecoration(
                      color: Color(0xFF0B5AD0),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                    ):null,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15.0,
                        ),
                        /*Image.asset(
                          "images/icon.jpg",
                          height: 50,
                          width: 240,
                        ),*/
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start ,
                          children: [
                            Text(
                              "Welcome back...!",
                              style: TextStyle(fontSize: 19, color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Please enter your login details",
                              style: TextStyle(fontSize: 12, color: Colors.white70,fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: AppTextFormField(
                            hintText: "UserId",
                            cursorColor: Colors.white,
                            textColor: Colors.white,
                            hintColor:Colors.white70 ,
                            suffixIcon: Icon(Icons.person,color: Colors.white70,),
                            focusedBorderColor: Colors.white,
                          ),
                        ),Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: AppTextFormField(
                            hintText: "Password",
                            cursorColor: Colors.white,
                            textColor: Colors.white,
                            hintColor:Colors.white70 ,
                            suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {
                                    isObscure = !isObscure;
                                  });
                                },
                                icon: Icon(isObscure?Icons.visibility_off_outlined:Icons.visibility,color: Colors.white70,)),
                            focusedBorderColor: Colors.white,
                            obscureText: isObscure,
                          ),
                        ),
                        /*Container(
                          width: 200,
                          child: TextField(
                            controller: userIdController,
                            decoration: InputDecoration(
                              labelText: 'User ID',
                              labelStyle:
                                  TextStyle(fontSize: 15, color: Colors.black),
                              hintText: 'Enter your UserID',
                              hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ),
                        ),*/
                        /*SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 200,
                          child: TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle:
                                  TextStyle(fontSize: 15, color: Colors.black),
                              suffixIcon: Icon(
                                FontAwesomeIcons.eyeSlash,
                                size: 15,
                              ),
                              hintText: 'Enter your password',
                              hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ),
                        ),*/
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  // Handle forgot password logic
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style:
                                      TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.0,
                        ),
                        SizedBox(height: 40.0,width: 150.0,
                          child:  ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFCF7FAF5),
                                elevation: 5.0,
                                shadowColor: Colors.grey,textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white)
                            ),
                            child: Text('Login',style: TextStyle(color: Colors.black,),),
                          ),
                        ),
                        SizedBox(height: 5,),

                        false?Text('or Loin with',style: TextStyle(color: Colors.grey),):SizedBox(),
                        // SizedBox(height: 10,),

                        false?Row(
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
                            SizedBox(height: 35,width: 35,
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
                                icon: Icon(FontAwesomeIcons.apple,size: 15,color: Colors.white,),
                                label: Text(''),
                              ),),
                          ],
                        ):SizedBox(),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Don\'t have an account?',style: TextStyle(color: Colors.white70),),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                                );
                              },
                              child: Text(
                                ' Register Now',
                                style: TextStyle(color: Color(0xFCFAFBFC),fontSize: 16.0),
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
