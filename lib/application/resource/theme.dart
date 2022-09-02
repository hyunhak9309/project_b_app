import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProjectBTheme {
  static ThemeData themeLight() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle:
        SystemUiOverlayStyle(statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark),
      ),
      brightness: Brightness.light,
      primaryColor: const Color(0xFF00C0B1),
      // Primary
      primaryColorLight: const Color(0xFF5CC6BA),
      // Primary Pastel
      secondaryHeaderColor: const Color(0xFF79C942),
      primaryColorDark: const Color(0xFF99D073),
      splashColor: const Color(0xFFF2F2F2),
      hintColor: const Color(0xFFC4C7C7),
      // Hint
      errorColor: const Color(0xFFFF5449),
      // Error
      cardColor: const Color(0xFFCDE7EB),
      // Chip Selected
      shadowColor: const Color(0xB3E7ECEB),
      // Banner
      highlightColor: const Color(0xB3859897),
      // Chip - hash Tag
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      // Background 1
      backgroundColor: const Color(0xFFF0F7F6),
      // Background 2
      canvasColor: const Color(0xFFFFFFFF),
      // Tile/card
      bottomAppBarColor: const Color(0xFF5CC6BA),
      // Navigation bar(header)
      indicatorColor: const Color(0xFF272B2A),
      // Font main/icon
      focusColor: const Color(0xFF777B7B),
      // Font sub
      hoverColor: const Color(0xFF5CC6BA),
      // Selected
      dividerColor: const Color(0xFFE0E3E3),
      // Divider
      disabledColor: const Color(0xFFCDCDCD),
      //inactive
      dialogBackgroundColor: const Color(0xFFFFFFFF), //dialog Background
    );
  }

  static ThemeData themeDark() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF2A2A2D),
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle:
        SystemUiOverlayStyle(statusBarColor: Colors.black, statusBarIconBrightness: Brightness.light),
      ),
      brightness: Brightness.dark,
      primaryColor: const Color(0xFF00C0B1),
      primaryColorLight: const Color(0xFF5CC6BA),
      secondaryHeaderColor: const Color(0xFF79C942),
      primaryColorDark: const Color(0xFF99D073),
      splashColor: const Color(0xFF2A2A2D),
      hintColor: const Color(0xFFC4C7C7),
      errorColor: const Color(0xFFFF5449),
      cardColor: const Color(0xFFCDE7EB),
      shadowColor: const Color(0xFF1C1C1E),
      highlightColor: const Color(0x14FFFFFF),
      scaffoldBackgroundColor: const Color(0xFF2A2A2D),
      backgroundColor: const Color(0xFF333336),
      canvasColor: const Color(0xFF48484A),
      bottomAppBarColor: const Color(0xFF1C1C1E),
      indicatorColor: const Color(0xFFFFFFFF),
      focusColor: const Color(0x99EBEBF5),
      hoverColor: const Color(0xFF636366),
      dividerColor: const Color(0xFF636366),
      disabledColor: const Color(0xFF636366),
      dialogBackgroundColor: const Color(0xFF2A2A2D),
    );
  }
}