import 'package:intl/intl.dart';

String dateFormat(DateTime date) {
  var format = DateFormat('dd/MM/y');
  final dateString = format.format(date);
  return dateString;
}
