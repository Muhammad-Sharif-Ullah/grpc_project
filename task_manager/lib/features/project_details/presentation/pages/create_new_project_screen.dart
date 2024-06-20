import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateNewProjectScreen extends StatefulWidget {
  const CreateNewProjectScreen({super.key});

  @override
  CreateNewProjectScreenState createState() => CreateNewProjectScreenState();
}

class CreateNewProjectScreenState extends State<CreateNewProjectScreen> {
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
          'Create New Project',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
      body: Container(),
    );
  }
}
