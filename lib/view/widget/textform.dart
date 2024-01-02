import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class TextForm extends StatelessWidget {
   String hint = '';
  late TextEditingController controller;
  late FaIcon icon;
   bool isSecure;

   TextInputType inpute;
 TextForm({
    super.key,
    required this.hint,
    required this.controller,
    required this.isSecure,
    required this.icon,
    required this.inpute
    
  });

  @override
  Widget build(BuildContext context) {
    
    return TextFormField(
      keyboardType: inpute ,
      controller: controller,
      obscureText: isSecure,
      decoration:   InputDecoration(
        hintText: hint,
        
        suffixIcon:  Padding(
          padding: const EdgeInsets.only(top: 10),
          child: icon,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
