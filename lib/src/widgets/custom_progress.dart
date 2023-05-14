import 'package:flutter/material.dart';

class CustomLoadingProgress {
  showProgress({
    required BuildContext context,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return Align(
          alignment:  Alignment.center,
          child: Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: const Padding(
              padding: EdgeInsets.all(32.0),
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}
