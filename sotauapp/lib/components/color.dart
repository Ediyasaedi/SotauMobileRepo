import 'dart:ui';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

var bgColor = HexColor("#FFC82C");
var bgSoftColor = HexColor("#FFEEBF");
var iconColor = HexColor("#FB6117");
var softGreen = HexColor("#40BC86");
var bgBlack = HexColor("#060814");
var customWhite = HexColor("#FFF");
var pinkColor = HexColor("#E01945");
var bgBottomNavBar = HexColor("#28388F");
