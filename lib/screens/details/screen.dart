import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/app.dart';
import 'package:nft_app/models/nft.dart';
import 'package:nft_app/screens/details/components/creator_card.dart';
import 'package:nft_app/screens/details/components/details_header.dart';
import 'package:nft_app/src/constants/assets.dart';
import 'package:nft_app/src/widgets/custom_shapes/nft_details.dart';

class NFTDetailsScreen extends StatelessWidget {
  final NFT nft;

  const NFTDetailsScreen({Key? key, required this.nft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: InkWell(
                  onTap: () {}, child: SvgPicture.asset(notificationIcon)),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                detailsHeader(nft),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: KText(
                    nft.name,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.w600,
                    fontSize: 30.sp,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 76.w,
                    height: 22.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11.r),
                      gradient: const LinearGradient(
                        transform: GradientRotation(1.6383406),
                        colors: [Color(0xff320D6D), Color(0xff8A4CED)],
                        stops: [0.02, 1],
                      ),
                    ),
                    alignment: Alignment.center,
                    child: KText(
                      'ETH ${nft.price}',
                      color: CustomColors.white,
                      fontSize: 10.sp,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 14.h, bottom: 10.h),
                  child: Row(
                    children: [
                      creatorCard(title: 'Creator', nft: nft),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: creatorCard(title: 'Owner', nft: nft),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    KText(
                      'Top bid by',
                      fontSize: 12.sp,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.w500,
                    ),
                    Container(
                      height: 17.h,
                      width: 104.w,
                      alignment: Alignment.center,
                      decoration: const ShapeDecoration(
                          shape: StadiumBorder(), color: Color(0xffeae6e6)),
                      child: KText(
                        '@georgeTheLord',
                        fontSize: 12.sp,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(top:10.h),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
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
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
