import 'package:flutter/material.dart';

class SenMessageField extends StatelessWidget {
  final TextEditingController? textcontroller;
  SenMessageField({
    Key? key, this.textcontroller,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textcontroller,
      decoration: const InputDecoration(labelText: 'mesaj gönder'),
    );
  }
}