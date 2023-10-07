import 'package:intl/intl.dart';

class UtilServices {
  // R$ valor
  priceToCurency(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');
    return numberFormat.format(price);
  }
}
