void outer(String name, String id) {
  String inner() {
    List<String> splitName = name.split(' ');
    String firstName = splitName[0];
    String lastNameInitial = splitName[1][0];  // First letter of last name
    return 'Hello Agent $lastNameInitial.$firstName your id is $id';
  }

  print(inner());
}

