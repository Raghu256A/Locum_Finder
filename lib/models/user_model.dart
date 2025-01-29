class UserModel {
  String name="";
  String email="";
  String phone="";
  String userType="";
  String professionalType="";
  String serviceProviderType="";

  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.userType,
    this.professionalType = "",
    this.serviceProviderType = "",
  });
}
