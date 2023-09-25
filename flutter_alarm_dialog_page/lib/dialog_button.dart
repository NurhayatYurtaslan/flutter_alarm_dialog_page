import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  const DialogButton({Key ,key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      child: const Text('Cupertino Dialog'),
      onPressed: () {
        showDialog(
          context: context,
          barrierDismissible: false, // Prevents dismissing the dialog by tapping outside
          builder: (context) {
            return AlertDialog(
              shadowColor: Colors.purple,
              surfaceTintColor: Color.fromARGB(255, 0, 26, 77),
              scrollable: RenderObject.debugCheckingIntrinsics,
              title: Text(
                'Delete Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              content: Text(
                'Are you sure you want to delete your account? This action cannot be undone!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: Colors.white,
              elevation: 8,
              actions: [
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Text('Cancel'),
                  onPressed: () => Navigator.of(context).pop(false),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  child: Text('Delete'),
                  onPressed: () => Navigator.of(context).pop(true),
                ),
              ],
            );
          },
        );
      },
    );
  }
}