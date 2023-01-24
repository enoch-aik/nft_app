import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/app.dart';

Widget placeBidButton(){
  return Container(
    height: 65.h,
    width: 310.w,
    decoration: BoxDecoration(
        gradient: const LinearGradient(
            transform: GradientRotation(1.6678366),
            colors: [
              Color(0xff1DD0DF),
              Color(0xff1BEDFF),
              Color(0xff14BDEB)
            ]),
        borderRadius: BorderRadius.circular(15.r)),
    alignment: Alignment.center,
    child: KText(
      'Place Bid Now',
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 20.sp,
    ),
  );
}