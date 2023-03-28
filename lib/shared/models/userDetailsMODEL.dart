class UserDetails {
  String? fullname;
  String? gender;
  String? phoneNumber;
  String? email;
  String? department;
  String? userType;

  UserDetails(
      {this.fullname,
      this.gender,
      this.phoneNumber,
      this.email,
      this.department,
      this.userType});

  UserDetails.fromJson(Map<String, dynamic> json) {
    fullname = json['fullname'];
    gender = json['gender'];
    phoneNumber = json['phone_number'];
    email = json['email'];
    department = json['department'];
    userType = json['user_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullname'] = this.fullname;
    data['gender'] = this.gender;
    data['phone_number'] = this.phoneNumber;
    data['email'] = this.email;
    data['department'] = this.department;
    data['user_type'] = this.userType;
    return data;
  }
}
