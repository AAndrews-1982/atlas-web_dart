class User {
  int id;
  String name;
  int age;
  double height;

  // Constructor to initialize User properties
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
  });

  // Method to return the map representation of the User (including id)
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
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  // Override the toString method
  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, height: $height)';
  }
}

