import 'package:flutter/material.dart';

class Inputbox extends StatelessWidget {
  const Inputbox({
    super.key,
    required this.control,
    required this.color,
    required this.placeholder,
  });
  final TextEditingController control;
  final Color color;
  final String placeholder;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: TextField(
        controller: control,
        decoration: InputDecoration(   
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6))),
          fillColor: color,
          hintText: placeholder,
        ),
      ),
    );
  }
}

class Inputboxsec extends StatelessWidget {
  const Inputboxsec({
    super.key,
    required this.control,
    required this.color,
    required this.placeholder,
  });
  final TextEditingController control;
  final Color color;
  final String placeholder;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: control,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6))),
          fillColor: color,
          hintText: placeholder,
        ),
        style: TextStyle(height: 1.0),
      ),
    );
  }
}

class Inputarea extends StatelessWidget {
  const Inputarea({
    super.key,
    required this.control,
    required this.color,
    required this.placeholder,
  });
  final TextEditingController control;
  final Color color;
  final String placeholder;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: control,
         keyboardType: TextInputType.multiline,
        minLines: 1, //Normal textInputField will be displayed
        maxLines: 5,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6))),
          fillColor: color,

          hintText: placeholder,
        ),
        style: TextStyle(height: 1.0),
      ),
    );
  }
}
