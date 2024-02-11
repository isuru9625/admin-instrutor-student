import 'package:educator_app/screens/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FolderListScreen extends StatefulWidget {
  const FolderListScreen({super.key});

  @override
  State<FolderListScreen> createState() => _FolderListScreenState();
}

class _FolderListScreenState extends State<FolderListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.green,
        shape: const CircleBorder(),
        onPressed: (){},
        child: const Icon(
          Icons.add,
          color: AppColors.black,
        ),
      ),
      appBar: AppBar(
        title: const Text('Folders'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: 20, // Number of items in the grid
          itemBuilder: (BuildContext context, int index) {
            return Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  color: Colors.yellow,
                  splashColor: AppColors.blue,
                  focusColor: AppColors.blue,
                  hoverColor: AppColors.blue,
                  iconSize: 70,
                  onPressed: () {}, 
                  icon: const Icon(Icons.folder)),
                  const Gap(8),
                Text('Folder $index', style: const TextStyle(color: AppColors.black),)
              ],
            );
          },
        ),
      ),
    );
  }
}
