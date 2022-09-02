import 'package:meta/meta.dart';

class Story{

   final int? id;
   final String? title;
   final String? coverUrl;

   Story({@required this.id, @required this.title, this.coverUrl});

   Map<String, dynamic> toMap(){
     return {
          'id' : id,
          'title' : title,
          'cover' : coverUrl,
     };
   }

}

class Chapter{
    final int? id;
    final String? title;
    final String? body;

    Chapter({@required this.id, @required this.title, @required this.body});

  Map<String, dynamic> toMap(){
     return {
          'id' : id,
          'title' : title,
          'cover' : body,
     };
   }

}