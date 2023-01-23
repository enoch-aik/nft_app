import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/app.dart';

ThemeData appTheme = ThemeData(
    fontFamily: GoogleFonts.roboto().fontFamily,
    primaryColor:  CustomColors.appColor,
appBarTheme: const AppBarTheme(backgroundColor: CustomColors.white,elevation: 0,foregroundColor: Colors.black),
  scaffoldBackgroundColor:  CustomColors.scaffoldColor
);
