import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:zstory/story_zineb/models/story.dart';
import 'package:zstory/story_zineb/repository/repo_stories.dart';
import 'package:zstory/story_zineb/routes/main_route.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final database = openDatabase(
    join(await getDatabasesPath(), "stories_database.db"),
    version: 2,
    onCreate: (db, version) {
      return db.execute('CREATE TABLE Story (id INTEGER PRIMARY KEY, title TEXT, cover TEXT)');
    },
  );

  final repo = MyRepository(db: await database);
  final int id = await repo.insertStory(Story(id: 1, title: "story first"));
  log("$id");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.green,
      debugShowCheckedModeBanner: false,
      title: 'ZStory App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      
      ),
      //home: const Home(),
      routes: MainRoutes.routes,
      initialRoute: "/",
    
    );
  }
}

