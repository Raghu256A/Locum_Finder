import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:locumfinder/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "images/login_img.jpg"
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
                    height: 430,
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
                          height: 4,
                        ),
                        Image.asset(
                          "images/icon.jpg",
                          height: 50,
                          width: 240,
                        ),
                        Text(
                          "Please Login to continue",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 250,
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
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 250,
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
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20.0, 20.0, 40.0, 20.0),
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
                                      TextStyle(color: Colors.redAccent[400]),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.0,
                        ),
                        SizedBox(height: 40.0,width: 200.0,
                          child:  ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFC07CEE8),
                                elevation: 3,
                                shadowColor: Colors.grey[100],textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)
                            ),
                            child: Text('Login',style: TextStyle(color: Colors.white,),),
                          ),
                        ),
                        SizedBox(height: 8,),

                        Text('or Loin with',style: TextStyle(color: Colors.grey),),
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
                            Text('Don\'t have an account?'),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                                );
                              },
                              child: Text(
                                ' Register Now',
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
