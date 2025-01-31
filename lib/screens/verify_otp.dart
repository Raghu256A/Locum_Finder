import 'package:flutter/material.dart';
import 'package:locumfinder/screens/register_details_screen.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  List<TextEditingController> otpControllers =
      List.generate(4, (_) => TextEditingController());
  final _otpFocusNodes = List.generate(4, (i) => FocusNode());

  @override
  void dispose() {
    // Dispose the focus nodes
    _otpFocusNodes.forEach((focusNode) => focusNode.dispose());
    super.dispose();
  }

  Widget buildOTPBox(int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: 50,
        height: 60,
        child: TextField(
          controller: otpControllers[index],
          autofocus: true,
          textAlign: TextAlign.center,
          maxLength: 1,
          keyboardType: TextInputType.number,
          focusNode: _otpFocusNodes[index],
          decoration: InputDecoration(
            counterText: "",
            border: OutlineInputBorder(),
            filled: true,
            fillColor: Colors.blue[50]
          ),
          onChanged: (value) {
            if (value.isNotEmpty && index < 3) {
              FocusScope.of(context).requestFocus(_otpFocusNodes[index + 1]);
            }
            if (value.isEmpty && index > 0) {
              // Move focus to the previous box when value is cleared
              FocusScope.of(context).requestFocus(_otpFocusNodes[index - 1]);
            }
          },
        ),
      ),
    );
  }

  void verifyOTP() {
    // Your logic to verify OTP
    print("OTP Verified!");
    // On successful verification, navigate to the next screen
    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterDetailsScreen(),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(title: Text("Enter OTP")),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'images/otp_bg1.jpg',  // Replace with your image path
              fit: BoxFit.cover,  // Ensures the image covers the screen
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (index) => buildOTPBox(index)),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: verifyOTP,
                  child: Text("Verify OTP"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
