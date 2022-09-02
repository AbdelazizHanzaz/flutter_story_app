import 'package:flutter/material.dart';
import 'package:zstory/story_zineb/widgets/story_card.dart';


class StoriesGridView extends StatelessWidget {
  const StoriesGridView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            padding: const EdgeInsets.all(8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
            itemBuilder: (context, index) {
          return const StoryCard();
        });
  }
}