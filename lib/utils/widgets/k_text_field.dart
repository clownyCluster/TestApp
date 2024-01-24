import 'package:flutter/material.dart';

import '../constant.dart';

class kTextFormField extends StatelessWidget {
  String? hintText;
  String? labelText;
  String? errorMessage;
  final void Function(String)? onChanged;
  TextInputType? inputType;
  String? initialText;
  int? maxLines;
  kTextFormField(
      {this.inputType,
      this.maxLines,
      this.initialText,
      this.errorMessage,
      this.onChanged,
      this.hintText,
      this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      maxLines: maxLines,
      initialValue: initialText,
      // style: kTextStyle(context),
      keyboardType: inputType,
      // controller: addPostState.unitPriceController,
      onChanged: onChanged,
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: primaryColor)),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return errorMessage;
        }
        return null;
      },
    );
  }
}
