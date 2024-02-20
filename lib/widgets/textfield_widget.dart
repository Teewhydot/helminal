import 'package:flutter/material.dart';


class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required TextEditingController textController,
    required this.hintText,
  }) : _textController = textController;

  final TextEditingController _textController;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 1),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration:
        const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: _textController,
          cursorColor: Colors.black,
          keyboardType: TextInputType.name,
          onChanged: (newValue) {},
          decoration: InputDecoration(
            filled: true,
            focusColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 3, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(8),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 1,
                  style: BorderStyle.solid,),
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: hintText,
            contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
          ),
        ),
      ),
    );
  }
}
// custom text field for numbers only

class CustomNumberTextfield extends StatelessWidget {
  const CustomNumberTextfield({
    super.key,
    required TextEditingController textController,
    required this.hintText,
  }) : _textController = textController;

  final TextEditingController _textController;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 1),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration:
        const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: _textController,
          cursorColor: Colors.black,
          keyboardType: TextInputType.number,
          onChanged: (newValue) {},
          decoration: InputDecoration(
            filled: true,
            focusColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 3, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(8),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 1,
                  style: BorderStyle.solid,),
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: hintText,
            contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
          ),
        ),
      ),
    );
  }
}