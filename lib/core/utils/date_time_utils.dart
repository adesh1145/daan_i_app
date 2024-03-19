import 'package:intl/intl.dart';

DateTime stringToDDMMMYYYY({required String date}) {
  var formatter = DateFormat('dd-MMM-yyyy');
  return formatter.parse(date);
}

// DateTime stringToDDMMMYYYY({required String date}) {
//   var formatter = new DateFormat('dd-MMM-yyyy');
//   return formatter.parse(date);
// }

String dateTimeToDDMMMMYYYYHHMMA({required DateTime dateTime}) {
  var formatter = DateFormat('dd-MMMM-yyyy hh:mm a');
  return formatter.format(dateTime);
}

String dateTimeToDDMMMYYYYHHMMA({required DateTime dateTime}) {
  var formatter = DateFormat('dd-MMM-yyyy hh:mm a');
  return formatter.format(dateTime);
}

String dateTimeToDDMMMYYYY({required DateTime dateTime}) {
  var formatter = DateFormat('dd-MMM-yyyy');
  return formatter.format(dateTime);
}

String splitDate(String inputString) {
  String date = '';
  List<String> splitString = inputString.split('  ');

  if (splitString.length == 2) {
    date = splitString[0].trim();
  }

  return date;
}

String stringToDDMMMYYYYHHMMA(String date) {
  try {
    var formatter = DateFormat('dd-MMM-yyyy hh:mm a');
    String formattedDate = formatter.format(DateTime.parse(date));
    return formattedDate;
  } catch (e) {
    return "Invalid";
  }
}
