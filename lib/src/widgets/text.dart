import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/app.dart';

class KText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? lineHeight;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final TextDecoration? decoration;
  final TextOverflow? overflow;
  final String? fontFamily;

  const KText(this.text,
      {Key? key,
      this.fontSize,
      this.fontWeight,
      this.color,
      this.fontStyle,
      this.lineHeight,
      this.textAlign,
      this.decoration,
      this.fontFamily,
      this.overflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      style: GoogleFonts.roboto().copyWith(
          decoration: decoration,
          fontSize: fontSize ?? 14.sp,
          fontStyle: fontStyle,
          fontFamily: fontFamily,
          fontWeight: fontWeight ?? FontWeight.w300,
          color: color ?? CustomColors.textColor,
          height: lineHeight),
    );
  }
}
