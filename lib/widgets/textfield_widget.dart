import 'package:flutter/material.dart';
import 'package:helminal/validators.dart';


class CustomTextfield extends StatefulWidget {
  const CustomTextfield({
    super.key,
    required TextEditingController textController,
    required this.hintText,
    required this.maxLength,
    required this.focusNode,
    required this.wordKey,

  }) : _textController = textController;

  final TextEditingController _textController;
  final String hintText;
  final int maxLength;
  final FocusNode focusNode;
  final GlobalKey wordKey;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {

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
          controller: widget._textController,
          validator: lengthValidator,
          focusNode: widget.focusNode,
          key: widget.wordKey,
          maxLength: widget.maxLength,
          keyboardType: TextInputType.name,
          onChanged: (value) {
            if (value.length == widget.maxLength) {
              FocusScope.of(context).requestFocus(FocusNode());
            }
          },
          decoration: InputDecoration(
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
            hintText: widget.hintText,
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
    required this.unChanged,
  }) : _textController = textController;

  final TextEditingController _textController;
  final String hintText;
  final Function unChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 1),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration:
        const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
        child: TextField(
          onChanged: (value) {
            unChanged(value);
          },
          controller: _textController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
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
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          ),
        ),
      ),
    );
  }
}