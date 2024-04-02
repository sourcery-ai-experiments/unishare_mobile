import 'package:flutter/material.dart';

class MilestoneCheckBox extends StatelessWidget {
  final bool isChecked;

  const MilestoneCheckBox({Key? key, required this.isChecked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
            color: isChecked ? Color.fromARGB(255, 34, 222, 154) : Colors.red,
          ),
          color: isChecked ? Color.fromARGB(255, 34, 222, 154) : Colors.red,
        ),
        child: isChecked
            ? const Icon(
                Icons.check,
                size: 16,
                color: Colors.white,
              )
            : const Icon(
                Icons.close,
                size: 16,
                color: Colors.white,
              ),
      ),
    );
  }
}