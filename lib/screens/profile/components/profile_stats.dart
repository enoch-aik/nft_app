import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/app.dart';

Widget profileStats({required String title, required String stats}) => Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    KText(
      stats,
      fontWeight: FontWeight.w600,
      fontSize: 20.sp,
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
    KText(
      title,
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 15.sp,
    )
  ],
);
