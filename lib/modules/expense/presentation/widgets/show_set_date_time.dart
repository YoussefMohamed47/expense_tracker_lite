import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void showSetDateTimeDialog(
  BuildContext context, {
  required Function(String) onDateSelected, // ✅ رجع String مش DateTime
  DateTime? initialDateTime,
}) {
  showDatePicker(
    context: context,
    initialDate: initialDateTime ?? DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
  ).then((selectedDate) {
    if (selectedDate != null) {
      final formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
      onDateSelected(formattedDate);
    }
  });
}
