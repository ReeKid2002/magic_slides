import 'package:flutter/material.dart';

class MagicSlideBottomSheet {
  static void show({required BuildContext context, required Widget child}) {
    showModalBottomSheet(
      context: context,

      builder: (context) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),

          child: child,
        );
      },
    );
  }
}
