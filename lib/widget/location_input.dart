import 'package:app_weather/widget/text_field_input.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/dimens.dart';

class LocationInput extends StatefulWidget {
  final String? labelText;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  const LocationInput({
    super.key,
    this.labelText,
    this.controller,
    this.focusNode,
  });
  @override
  _LocationInputState createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  final TextEditingController _locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFieldInput(
      controller: widget.controller,
      focusNode: widget.focusNode,
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
              height: AppDimens.ic30,
              width: AppDimens.ic30,
              child: Icon(
                Icons.local_activity,
              )),
          const SizedBox(width: AppDimens.size12),
          Text(widget.labelText ?? ''),
        ],
      ),
      labelStyle: widget.focusNode?.hasFocus == false
          ? const TextStyle(color: AppColors.textDefault)
          : const TextStyle(color: AppColors.textHint),
    );
  }
}
