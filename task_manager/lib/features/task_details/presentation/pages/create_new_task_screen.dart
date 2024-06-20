import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateNewTaskScreen extends StatefulWidget {
  const CreateNewTaskScreen({super.key});

  @override
  CreateNewTaskScreenState createState() => CreateNewTaskScreenState();
}

class CreateNewTaskScreenState extends State<CreateNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell_fill),
            onPressed: () {},
          ),
          const SizedBox(width: 15),
        ],
        title: Text(
          'Create New Task',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
      body: Container(),
    );
  }
}
