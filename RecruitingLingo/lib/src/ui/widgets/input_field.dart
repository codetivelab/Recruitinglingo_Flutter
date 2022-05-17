
import 'package:flutter/material.dart';

import '../../util/Colors.dart';

class TextInput extends StatefulWidget{

  const TextInput({
    required this.labelText,
    required this.hintText,
    Key? key,
  }) : super(key: key);

  final String labelText;
  final String hintText;

  @override
  State<TextInput> createState() =>  _TextInputState();

}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(15),
     child: TextField(
       decoration: InputDecoration(
         border: const OutlineInputBorder(),
         focusedBorder: const OutlineInputBorder(
           borderSide: BorderSide(color: appColor, width: 2.0),
         ),
         labelText: widget.labelText,

         hintText: widget.hintText,
         labelStyle: const TextStyle(color: Colors.grey),
       ),
     ),
   );
  }
}