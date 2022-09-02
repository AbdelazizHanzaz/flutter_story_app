import 'package:flutter/material.dart';
import 'package:zstory/story_zineb/screens/screens.dart';


class MainRoutes{


   static  Map<String, Widget Function(BuildContext)> routes= {
        Home.routeName : (context) => const Home(),
        StoryDetails.routeName : (context) => const StoryDetails(),
        ChapterDetails.routeName: (context) => const ChapterDetails(),
        AddChapter.routeName: (context) => const AddChapter(),
      };
}