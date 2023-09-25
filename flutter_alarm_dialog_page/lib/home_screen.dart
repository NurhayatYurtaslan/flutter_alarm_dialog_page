import 'package:flutter/material.dart';
import 'dialog_button.dart';
import '/material_dialog_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * 0.08,),
              MaterialDialogButton(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
              DialogButton(),
            ],
          ),
        ),
      ),
    );
  }
}