
import 'dart:developer';

import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () => log("details"),
      borderRadius: BorderRadius.circular(16),
      splashColor: Colors.green.shade200,
      highlightColor: Colors.green.shade200,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          //color: Colors.green.shade200
          image: const DecorationImage(
            image: AssetImage("assets/images/q1.png"),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text("This is Story Name",
           textAlign: TextAlign.center,
           style: TextStyle(
             color: Colors.green.shade100,
             fontWeight: FontWeight.bold, 
             fontSize: 16),
           ),
        ),
        
      ),
    );
  }
}
