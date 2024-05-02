import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AdaptativeDatePicker extends StatelessWidget {

  final DateTime? selectedDate;
  final Function (DateTime)? onDateChanged;

  const AdaptativeDatePicker({super.key, 
    this.selectedDate,
    this.onDateChanged
  });

  _showDatePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }

      onDateChanged!(pickedDate);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
    ? SizedBox(
      height: 180,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.date,
        initialDateTime: DateTime.now(),
        minimumDate: DateTime(2019),
        maximumDate: DateTime.now(),
        onDateTimeChanged: onDateChanged!,
      ),
    )
    : SizedBox(
        height: 70,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                  selectedDate == null
                  ? "No date selected!"
                  : "Selected Date: ${DateFormat("dd/MM/y").format(selectedDate!)}",
              ),
            ),  
            TextButton(
              onPressed: () => _showDatePicker(context),
              child: const Text(
                "Select date",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
  }
}