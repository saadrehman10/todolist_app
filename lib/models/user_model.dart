class User {
  int id;
  String firstName;
  String? middleName;
  String lastName;
  String email;
  String phoneNo;
  String password;

  User({
    required this.firstName,
    required this.lastName,
    this.middleName,
    required this.id,
    required this.email,
    required this.phoneNo,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      firstName: map['firstName'],
      lastName: map['lastName'],
      id: map['id'],
      middleName: map['middleName'],
      email: map['email'],
      phoneNo: map['phoneNo'],
      password: map['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'middleName': middleName,
      'lastName': lastName,
      'email': email,
      'phoneNo': phoneNo,
      'password': password,
    };
  }

  String get fullName => '$firstName ${middleName ?? ''} $lastName';
}
