import 'package:educator_app/screens/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddFolder extends StatefulWidget {
  const AddFolder({super.key});

  @override
  State<AddFolder> createState() => _AddFolderState();
}

class _AddFolderState extends State<AddFolder> {
  final double _fieldBorderRadius = 30;
  final double _fieldBorderLineWidth = 1.5;
  final double _fieldFontSizeValue = 12;
  final formKey = GlobalKey<FormState>();
  final folderNameController = TextEditingController();
  final emailListController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final focusedBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.black,
        width: _fieldBorderLineWidth,
      ),
      borderRadius: BorderRadius.all(Radius.circular(_fieldBorderRadius)),
    );

    final enabledBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.black,
        width: _fieldBorderLineWidth,
      ),
      borderRadius: BorderRadius.all(Radius.circular(_fieldBorderRadius)),
    );

    final valueStyle = TextStyle(
      color: AppColors.black,
      fontSize: _fieldFontSizeValue,
    );

    final errorBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.red,
        width: _fieldBorderLineWidth,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(30)),
    );

    const errorStyle = TextStyle(
      color: AppColors.red,
    );

    const cursorColor = AppColors.black;
    return Scaffold(
      backgroundColor: AppColors.backGround,
      appBar: AppBar(
        backgroundColor: AppColors.backGround,
        title: const Text('Add a new folder'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(30),
                const Text(
                  'Folder name',
                  style: TextStyle(color: AppColors.black),
                ),
                const Gap(10),
                TextFormField(
                  style: valueStyle,
                  controller: folderNameController,
                  cursorColor: cursorColor,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.ligthWhite,
                    labelText: 'Enter folder name',
                    labelStyle: const TextStyle(fontSize: 10),
                    focusedBorder: focusedBorder,
                    enabledBorder: enabledBorder,
                    border: focusedBorder,
                    errorBorder: errorBorder,
                    errorStyle: errorStyle,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the folder name';
                    }
                    return null;
                  },
                ),
                const Gap(10),
                const Center(
                  child: Text(
                    'Upload videos',
                    style: TextStyle(color: AppColors.black),
                  ),
                ),
                const Gap(10),
                Center(
                  child: IconButton(
                      color: AppColors.blue,
                      splashColor: AppColors.grey,
                      focusColor: AppColors.grey,
                      hoverColor: AppColors.grey,
                      iconSize: 40,
                      onPressed: () {},
                      icon: const Icon(Icons.cloud_upload)),
                ),
                const Gap(10),
                const Text(
                  'Email list',
                  style: TextStyle(color: AppColors.black),
                ),
                const Gap(10),
                SizedBox(
                  height: 300,
                  child: TextFormField(
                    expands: true,
                    maxLines: null,
                    style: valueStyle,
                    controller: emailListController,
                    cursorColor: cursorColor,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.ligthWhite,
                      labelText: 'Enter email address',
                      labelStyle: const TextStyle(fontSize: 10),
                      focusedBorder: focusedBorder,
                      enabledBorder: enabledBorder,
                      border: focusedBorder,
                      errorBorder: errorBorder,
                      errorStyle: errorStyle,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the email address';
                      }
                      return null;
                    },
                  ),
                ),
                const Gap(10),
                 Align(
                  alignment: Alignment.bottomRight,
                   child: Container(
                    height: 35,
                    width: 60,
                    decoration: BoxDecoration(
                        color: AppColors.black,
                        borderRadius: BorderRadius.circular(29)),
                    child: TextButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!formKey.currentState!.validate()) return;
                       
                      },
                      child: const Center(
                          child: Text(
                        'Save',
                        style: TextStyle(
                          color: AppColors.ligthWhite,
                        ),
                      )),
                    ),
                                   ),
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
