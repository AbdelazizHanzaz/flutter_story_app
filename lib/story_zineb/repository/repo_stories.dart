import 'package:sqflite/sqflite.dart';
import 'package:zstory/story_zineb/models/story.dart';

class MyRepository{

  final Database db ; 

  const MyRepository({required this.db});
 
  
  Future<int> insertStory(Story story) async{

     int id = await db.insert('Story', story.toMap());

     return id;
  }

  Future<List<Story>> getStories() async {

    final List<Map<String, dynamic>> maps = await db.query('Story');

    return List.generate(maps.length, (index){
          return Story(
            id: maps[index]['id'] as int,
            title: maps[index]['title'], 
            coverUrl: maps[index]['cover']
            );
    });

  }

  Future<int> updateStory(Story story) async {

    return await db.update('Story', story.toMap(), where: 'id = ?', whereArgs: [story.id]);

  }

  Future<int> deleteStory(int id) async {

    return await db.delete('Story', where: 'id = ?', whereArgs: [id]);

  }







}