import 'dart:developer';

import 'package:flutter/material.dart';


class StoriesListView extends StatelessWidget {
  const StoriesListView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: Colors.green.shade300,
      color: Colors.white,
      onRefresh: () async{
          log("onRefresh");
      },
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 48.0),
        itemCount: 9,
        itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green.shade200,
                child: Image.asset("assets/images/q1.png"),
              ),
              title: Text("Story Title", style: TextStyle(
                fontWeight: FontWeight.bold, 
                color: Colors.green.shade800, )),
              subtitle: const Text("12 Chapters"),
              trailing: Icon(Icons.navigate_next, color: Colors.green.shade800),
            );
        },
        
      ),
    );
  }
}