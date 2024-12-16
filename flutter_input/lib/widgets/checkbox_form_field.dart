import 'package:flutter/material.dart';

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField({Widget? title})
      : super(
          builder: (field) => CheckboxListTile(
            title: title,
            value: field.value,
            onChanged: field.didChange,
          ),
        );
}
