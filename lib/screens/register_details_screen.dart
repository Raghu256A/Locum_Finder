import 'package:flutter/material.dart';

import '../apptextformfield.dart';

class RegisterDetailsScreen extends StatefulWidget {
  @override
  _RegisterDetailsScreenState createState() => _RegisterDetailsScreenState();
}

class _RegisterDetailsScreenState extends State<RegisterDetailsScreen> {
  final _formKey = GlobalKey<FormState>();

  // Dropdown values
  String? _selectedUserType;
  String? _selectedProfession;

  // Dropdown options
  final List<String> _userTypes = ["--Select--","GeneralUser", "ServiceProviders", "ProfessionalUsers"];
  final List<String> _professions = ["--Select--","Hospital", "MedicalShop", "Diagnostics", "SurgeryCenters"];

  bool showProfessionalDropdown = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedUserType = _userTypes[0];
    _selectedProfession = _professions[0];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text("User Type"),
                // User Type Dropdown
                DropdownButtonFormField<String>(
                  padding: EdgeInsets.all(5.0),
                  decoration: InputDecoration(
                    counterText: "",
                      border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(20.0)),gapPadding: 5.0 )
                  ),
                  value: _selectedUserType,
                  items: _userTypes.map((type) {
                    return DropdownMenuItem(value: type, child: Text(type));
                  }).toList(),
                  onChanged: (value) => setState(() {
                    _selectedUserType = value;
                    if(value == "ServiceProviders" || value == "ProfessionalUsers"){
                      showProfessionalDropdown = true;
                    }else{
                      showProfessionalDropdown = false;
                    }
                  }),
                  validator: (value) => value == null ? "Select user type" : null,
                ),

                SizedBox(height: 10),


                showProfessionalDropdown?Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Service Type"),
                    // Profession Dropdown
                    DropdownButtonFormField<String>(
                      value: _selectedProfession,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(20.0)),gapPadding: 5.0 )
                      ),
                      items: _professions.map((profession) {
                        return DropdownMenuItem(value: profession, child: Text(profession));
                      }).toList(),
                      onChanged: (value) => setState(() => _selectedProfession = value),
                      validator: (value) => value == null ? "Select a profession" : null,
                    ),
                  ],
                ):SizedBox(),

                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AppTextFormField(
                    hintText: "Name",
                    cursorColor: Colors.black,
                    textColor: Colors.black,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AppTextFormField(
                    hintText: "Address",
                    cursorColor: Colors.black,
                    textColor: Colors.black,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AppTextFormField(
                    hintText: "Profession",
                    cursorColor: Colors.black,
                    textColor: Colors.black,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  // Text("Document proof: "),
                  // Button to upload image
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.upload),
                    label: Text("Upload Certificates"),
                  ),
                ],),


                // Submit Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Print values (can be sent to API)
                        print("User Type: $_selectedUserType");
                        print("Profession: $_selectedProfession");

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Registration Successful")),
                        );
                      }
                    },
                    child: Text("Register"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
