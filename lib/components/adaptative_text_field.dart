import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeTextField extends StatelessWidget {

  final String? label;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final Function(String)? onSubmitted;

  const AdaptativeTextField({super.key, 
    this.label,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
    ? Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
    child: CupertinoTextField(
      controller: controller,
      keyboardType: keyboardType,
      onSubmitted: onSubmitted,
      placeholder: label,
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 12,
      ),
    ),
  )
        : TextField(
      controller: controller,
        keyboardType: keyboardType,
        onSubmitted: onSubmitted,
        decoration:  InputDecoration(
          labelText: label,
        ),        
    );
  }
}