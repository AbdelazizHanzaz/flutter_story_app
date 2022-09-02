import 'package:flutter/material.dart';
import 'package:zstory/story_zineb/models/story.dart';
import 'package:zstory/story_zineb/screens/screens.dart';



class StoryDetails extends StatelessWidget {

  const StoryDetails({ Key? key }) : super(key: key);
  
  static const String routeName = "/story_details";

  @override
  Widget build(BuildContext context) {

    final story = ModalRoute.of(context)!.settings.arguments as Story;

    return Scaffold(
       appBar: AppBar(
         title: Text(story.title!),
       ),
       
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (context, index){
          final Chapter _chapter = Chapter(id: index, title: "title", body: "body");
          return ListTile(
            onTap: (){
              Navigator.pushNamed(
                context, 
                ChapterDetails.routeName,
                arguments: _chapter
                );
            },
            //shape: Border( bottom: BorderSide( width: 2, color: Colors.grey.shade400, )),
            leading: Text("${ 1 + index}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            title: Text(_chapter.title!, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            subtitle: Text(_chapter.body!, overflow: TextOverflow.ellipsis,),
            trailing: const Icon(Icons.navigate_next),
          );
        }),

    );
  }
}