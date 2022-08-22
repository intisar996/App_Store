part of '../app_import/app_import.dart';

class AppColors {
  /// [colorHex] convert color from hex to color Flutter
  ///
  ///[opacity] default no opacity
  static Color colorHex(String hexColor, [String opacity = 'FF']) {
// ! 1- Delete # (#FF00000)

    String color = hexColor.replaceAll('#', '');

    // (FF0000)

    // * 2 Merge opacity with color

    String opacityColor = '$opacity$color';

    // opacityColor = FFFF0000

    // * 3 return color   {[int.parse] -> عشان كذا نستخدم  int لانه لما بيرجع لون لازم يكون }
    ///
    // *  [radix] -> hex decimal  =16
    return Color(int.parse(opacityColor, radix: 16));
    //* 0xFFFF0000
  }

  // * color App
  static final Color blueDetailsBG = colorHex('#a2e7f5');
  static final Color darkMode = colorHex('#3A3B3C');
  static final Color darkModeCardDetails = colorHex('#484848');
  static final Color darkModeBodyDetails = colorHex('#303030');
  static final Color lightModeInstallBtn = colorHex('#456369');
  static final Color darkModeInstallBtn = colorHex('#BB86FC');
  static final Color lightModeUnInstallBtn = colorHex('#e95f44');
  static final Color darkModeUnInstallBtn = colorHex('#FF0266');
  static final Color lightModeToast = colorHex('#90ee02');
  static final Color darkModeToast = colorHex('#BB86FC');
  static final Color mb = colorHex('#FF0266');

  static final Color red = colorHex('#B71c1c');
  static final Color orange = colorHex('#F57C00');
  static final Color blackCardSocial = colorHex('#000000', '54');
  // * loading
  static final Color lightLoading = colorHex('#46B5F6');
  static final Color darkLoading = colorHex('#BB86FC');
  static final Color cardClick = colorHex('#46B5F6');
  static final Color cardClickDark = colorHex('#BB86FC');

  static final Color bgWhite = colorHex('#FFFFFF');
  static final Color bgBlack = colorHex('#000000');
  static final Color bgDark = colorHex('#000000');
  static final Color bgCursor = colorHex('#3A3B3C');
  static final Color bgGrey = colorHex('#C8C8C8');
  static final Color bgGreen = colorHex('#A5D6A7');
  static final Color bgGreenBold = colorHex('#1B5E20');
  static final Color bgBlue = colorHex('#2196F3');
  static final Color bgRed = colorHex('#FD1D1D');
  static final Color star = colorHex('#FFC107');

  // * Btn Color
  static final List<Color> btnColors = [
    bgBlue,
    bgBlue.withOpacity(0.6),
  ];

  static final Color splashBtn = bgBlue.withAlpha(100);
}

///
///
///
///
///
///
///
///
// * 1 Colors.red
// Color red = Colors.red;
// * RGB (Red , Green, Blue)
// * Red 0 -255, Green 0 - 255, Blue 0 -255

Color red = const Color.fromARGB(255, 120, 255, 80);
Color blue = const Color.fromRGBO(255, 0, 0, 1.5);

// Color red = const Color.fromARGB(a, r, g, b);

// Color blue = const Color.fromRGBO(r, g, b, opacity);

// * hex Color
// 0 - 9 && A-F = 16
// #0044ff -> 00 -> Red, 44 -> Green, FF -> blue
// RGB = 255, hexColor = FF
// *FF0000 -> = red

// # 0x
// opacity -> ff
// color
//0xFFFF0000

Color green = const Color(0xffff0000);
