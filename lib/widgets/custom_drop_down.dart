import 'package:daan_i_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

class CustomDropDown<T> extends StatelessWidget {
  final List<KeyValue<T>> dropDownList;
  final Rxn initialValue;
  final String title;
  final String? errorMessage;
  final Function onChanged;
  final bool readOnly;
  final Key? dropDownKey;
  final double verticalContentPadding;

  const CustomDropDown(
      {super.key,
      this.verticalContentPadding = 0,
      required this.dropDownList,
      required this.initialValue,
      required this.title,
      required void this.onChanged(T newValueId),
      this.readOnly = false,
      this.dropDownKey,
      this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Obx(() => DropdownButtonFormField<T>(
          disabledHint: Text(
            title,
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) => value == null ? errorMessage : null,
          hint: Text(title, style: AppStyle.roboto16w500),
          // isExpanded: true,

          isExpanded: true,
          items: (dropDownList.toSet().toList().map((item) {
            return DropdownMenuItem<T>(
              key: dropDownKey,
              value: item.id,
              child: Text(
                item.label,
                style: AppStyle.roboto16w500.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            );
          }).toList()),

          value: initialValue.value,

          onChanged: readOnly
              ? null
              : (newValue) {
                  onChanged(newValue);
                  initialValue.value = newValue;
                },

          isDense: false,
          decoration: InputDecoration(
            labelText: title,
            labelStyle: AppStyle.roboto16w500,
            // .copyWith(color: Theme.of(context).colorScheme.onBackground),
            isDense: false,
            contentPadding: EdgeInsets.symmetric(
                horizontal: 10, vertical: verticalContentPadding),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Theme.of(context).colorScheme.primary,
                ),
                borderRadius: BorderRadius.circular(10)),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Theme.of(context).colorScheme.primary,
                ),
                borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Theme.of(context).colorScheme.primary,
                ),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Theme.of(context).colorScheme.primary,
                ),
                borderRadius: BorderRadius.circular(10)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 2,
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(10)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Theme.of(context).colorScheme.primary,
                ),
                borderRadius: BorderRadius.circular(10)),
          ),
        ));
  }
}

class KeyValue<T> {
  T id;
  String label;
  KeyValue({required this.id, required this.label});
}
