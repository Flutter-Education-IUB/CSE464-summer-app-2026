import 'package:flutter/material.dart';

class CoreInputWidget extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final int? maxLines;
  final String labelText;


  const CoreInputWidget({super.key, required this.controller, this.keyboardType, this.maxLines, required this.labelText});

  @override
  State<CoreInputWidget> createState() => _CoreInputWidgetState();
}

class _CoreInputWidgetState extends State<CoreInputWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
                controller: widget.controller,
                keyboardType: widget.keyboardType ?? TextInputType.text,
                maxLines: widget.maxLines ?? 1,
               decoration: InputDecoration(
                  labelText: widget.labelText,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.coffee),
                ), 
              );
  }
}