import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;
  String? user_password;

  // Constructor
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    String? user_password, // Pass user_password to parent class Password
  }) : super(password: user_password) {
    this.user_password = user_password;
  }

  // Method to return a JSON representation of the User
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Static method to create a User instance from a Map
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
      user_password: userJson['user_password'] ?? '',
    );
  }

  // Override toString to include password validity
  @override
  String toString() {
    bool isPasswordValid = isValid(); // Call isValid() from Password class
    return 'User(id: $id ,name: $name, age: $age, height: $height, Password: $isPasswordValid)';
  }
}

