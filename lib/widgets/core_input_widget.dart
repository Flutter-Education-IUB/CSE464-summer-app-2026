import 'package:flutter/material.dart';

class CoreInputWidget extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final int? maxLine;
  final TextInputType? keyboardType;
  const CoreInputWidget({super.key, required this.controller, required this.labelText, this.maxLine, this.keyboardType});

  @override
  State<CoreInputWidget> createState() => _CoreInputWidgetState();
}

class _CoreInputWidgetState extends State<CoreInputWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
                controller: widget.controller,
                keyboardType: widget.keyboardType ?? TextInputType.text,
                maxLines: widget.maxLine ?? 1,
                decoration: InputDecoration(
                  labelText: widget.labelText,
                  prefixIcon: Icon(Icons.coffee),
                  border: OutlineInputBorder(),
                ),
              );
  }
}