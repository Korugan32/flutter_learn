// class PostModel {
//   int userID;
//   int id;
//   String title;
//   String body;
//   // Initilaze Edilmeli.
// }

// Initilaze Etme.
class PostModel1 {
  int? userID;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  int userID;
  int id;
  String title;
  String body;

  PostModel2(this.userID, this.id, this.title, this.body);
}

class PostModel3 {
  final int userID;
  final int id;
  final String title;
  final String body;

  PostModel3(this.userID, this.id, this.title, this.body);
}

class PostModel4 {
  final int userID;
  final int id;
  final String title;
  final String body;

  PostModel4({required this.userID, required this.id, required this.title, required this.body});
}

class PostModel5 {
  final int _userID;
  final int _id;
  final String _title;
  final String _body;

  PostModel5({
    required int userID, 
    required int id,
    required String title,
    required String body
    }): _userID = userID, _id= id, _title = title, _body = body;
}

class PostModel6 {
  late final int _userID;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel6({
    required int userID, 
    required int id,
    required String title,
    required String body
    }){
      _userID = userID;
      _id= id;
      _title = title;
      _body = body;
    }
}

class PostModel7 {
  late final int _userID;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel7({
     int userID = 0, 
     int id = 0,
     String title = "",
     String body = "",
    }){
      _userID = userID;
      _id= id;
      _title = title;
      _body = body;
    }
}

class PostModel8 {
   final int? userID;
   final int? id;
   final String? title;
   final String? body;

   PostModel8({this.userID, this.id, this.title, this.body});

   PostModel8 copyWith({
    int? userID,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel8(
      userID: userID ?? this.userID,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}