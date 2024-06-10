void outer(String name, String id) {
  String inner() {
    var nameParts = name.split(' ');
    var firstName = nameParts[0];
    var lastNameInitial = nameParts[1][0];
    return 'Hello Agent $lastNameInitial.$firstName your id is $id';
  }

  print(inner());
}
