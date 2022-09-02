import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:zstory/story_zineb/delegate/story_search.dart';
import 'package:zstory/story_zineb/widgets/widgets.dart';


class Home extends StatelessWidget {
  
  const Home({Key? key}) : super(key: key);
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        backgroundColor: Colors.green.shade600,
        title: const Text("Z-Stories",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => StorySearchDelegate.showSearchAlertDialog(context),
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () => log("filter"),
              icon: const Icon(
                Icons.filter_list,
                color: Colors.white,
              ))
        ],
      ),
      body:  const StoriesListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context,
            builder: (context) => const AddStoryAlertDialog(),
            );
        },
        child: const Icon(
          Icons.edit,
          color: Colors.white,
        ),
        tooltip: "Add Story",
      ),
    );
  }







}


