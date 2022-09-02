import 'package:flutter/material.dart';
import 'package:zstory/story_zineb/models/story.dart';


class ChapterDetails extends StatelessWidget {

  const ChapterDetails({ Key? key }) : super(key: key);

  static const routeName = "/chapter_details";
   
  @override
  Widget build(BuildContext context) {

   final chapter = ModalRoute.of(context)!.settings.arguments as Chapter;
   

    return Scaffold(
      appBar: AppBar(
        title: Text(chapter.title!)
      ),

      body: Center(
        child: Text(chapter.body!),
      ),
      
    );
  }
}