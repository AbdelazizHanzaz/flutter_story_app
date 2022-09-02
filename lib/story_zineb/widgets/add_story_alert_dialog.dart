import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:zstory/story_zineb/screens/screens.dart';




class AddStoryAlertDialog extends StatefulWidget {
  const AddStoryAlertDialog({ Key? key }) : super(key: key);

  @override
  State<AddStoryAlertDialog> createState() => _AddStoryAlertDialogState();
}

class _AddStoryAlertDialogState extends State<AddStoryAlertDialog> {
  
  final _titleController = TextEditingController();
  bool _btnDisabled = false;
  
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
            
            backgroundColor: Colors.green.shade100,
            content: TextField(
              onChanged: (value) {
                setState(() {
                  _btnDisabled = value.isEmpty ? false : true;
                });
              },
              controller: _titleController,
              decoration: const InputDecoration(
                hintText: "Story title",
              ),
            ),           
            actions: [
              OutlinedButton(
                  onPressed: () => log("cancel"), child: const Text("Cancel")),
              ElevatedButton(
                onPressed: _btnDisabled ? () => Navigator.popAndPushNamed(context, AddChapter.routeName) : null, 
                child: const Text("Next")),
            ],
          );
  }
}