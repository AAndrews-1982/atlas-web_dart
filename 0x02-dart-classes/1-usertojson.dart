class User {
  String name;
  int age;
  double height;

  // Constructor to initialize the User properties
  User({required this.name, required this.age, required this.height});

  // Method to return the map representation of the User
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'height': height
    };
  }
}

