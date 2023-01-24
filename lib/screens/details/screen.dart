import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/app.dart';
import 'package:nft_app/models/nft.dart';
import 'package:nft_app/screens/details/components/bid_button.dart';
import 'package:nft_app/screens/details/components/creator_card.dart';
import 'package:nft_app/screens/details/components/details_header.dart';
import 'package:nft_app/src/constants/assets.dart';

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
                  padding: EdgeInsets.symmetric(vertical: 6.h),
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
                  padding: EdgeInsets.only(top: 8.h, bottom: 10.h),
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
                  padding: EdgeInsets.only(top: 10.h),
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => Center(
                                      child: Material(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        color: CustomColors.white,
                                        child: Container(
                                            height: 350.h,
                                            width: 320.w,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 31.h),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image.asset(confetti),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 6.h, top: 10.h),
                                                  child: KText(
                                                    'Successfully Placed Bid',
                                                    fontFamily:
                                                        GoogleFonts.poppins()
                                                            .fontFamily,
                                                    fontSize: 20.sp,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                KText(
                                                  '“Please be active to make sure\nyour bid is on top. so, you can get\nyour NFT art.”',
                                                  fontStyle: FontStyle.italic,
                                                  fontSize: 10.sp,
                                                  textAlign: TextAlign.center,
                                                  fontFamily:
                                                      GoogleFonts.poppins()
                                                          .fontFamily,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 23.h),
                                                  child: InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      height: 43.h,
                                                      width: 246.w,
                                                      decoration: BoxDecoration(
                                                          gradient: const LinearGradient(
                                                              transform:
                                                                  GradientRotation(
                                                                      1.6678366),
                                                              colors: [
                                                                Color(
                                                                    0xff1DD0DF),
                                                                Color(
                                                                    0xff1BEDFF),
                                                                Color(
                                                                    0xff14BDEB)
                                                              ]),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.r)),
                                                      alignment:
                                                          Alignment.center,
                                                      child: KText(
                                                        'Check your cart',
                                                        fontFamily: GoogleFonts
                                                                .poppins()
                                                            .fontFamily,
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )),
                                      ),
                                    ));
                          },
                          child: placeBidButton())),
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
