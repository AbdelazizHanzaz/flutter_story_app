import 'package:flutter/material.dart';
import 'package:zstory/story_zineb/config/platte.dart';

class AddChapter extends StatefulWidget {
  const AddChapter({Key? key}) : super(key: key);

  static const routeName = "/add_chapter";
  @override
  State<AddChapter> createState() => _AddChapterState();
}

class _AddChapterState extends State<AddChapter> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Platte.bgColorAppBar,
        title: const Text(""),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              autofocus: true,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  letterSpacing: 1.1),
              cursorHeight: 24,
              cursorWidth: 3,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Title",
                  hintStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade200)),
              toolbarOptions: const ToolbarOptions(
                copy: true,
                selectAll: true,
                paste: true,
                cut: true,
              ),
            ),
            Expanded(
                flex: 2,
                child: TextField(
                  controller: _bodyController,
                  maxLines: null,
                  expands: true,
                  style: const TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Start typing",
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade200)),
                )),
          ],
        ),
      ),
    );
  }
}
