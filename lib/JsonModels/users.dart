//In here first we create the users json model
// To parse this JSON data, do
//

class Users {
  final int? usrId;
  // final String name;
  final String usrName;
  final String usrPassword;

  Users({
    this.usrId,
    // required this.name,
    required this.usrName,
    required this.usrPassword,
  });

  factory Users.fromMap(Map<String, dynamic> json) => Users(
        usrId: json["usrId"],
        // name: json["name"],
        usrName: json["usrName"],
        usrPassword: json["usrPassword"],
      );

  Map<String, dynamic> toMap() => {
        "usrId": usrId,
        // "name": name,
        "usrName": usrName,
        "usrPassword": usrPassword,
      };
}
