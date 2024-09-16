import 'package:intl/intl.dart';

class FormatNumber {
  static numberFormat(pric){
    var f = NumberFormat('###,###','en_US');
    return f.format(pric);
  }
}