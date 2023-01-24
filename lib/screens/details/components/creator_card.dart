import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/app.dart';
import 'package:nft_app/models/nft.dart';
import 'package:nft_app/src/constants/assets.dart';
import 'package:nft_app/src/widgets/custom_shapes/top_seller.dart';

Widget creatorCard({required String title, required NFT nft}) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only(bottom: 7.h),
          child: KText(
            title,
            fontSize: 10.sp,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
        ),
        SizedBox(
          height: 83.h,
          width: 160.w,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 18.h),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    height: 83.h,
                    width: 160.w,
                    child: ClipPath(
                      clipper: TopSellerCustomShape(),
                      child: Container(
                        padding: EdgeInsets.only(right: 23.w),
                        color: CustomColors.white,
                        alignment: Alignment.centerRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.h),
                              child: KText(
                                title == 'Creator' ? nft.creator : nft.name,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 68.w,
                                height: 15.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11.r),
                                  gradient: const LinearGradient(
                                    transform: GradientRotation(1.6383406),
                                    colors: [
                                      Color(0xff320D6D),
                                      Color(0xff8A4CED)
                                    ],
                                    stops: [0.02, 1],
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: KText(
                                  'ETH 22.051225',
                                  color: CustomColors.white,
                                  fontSize: 8.sp,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                ),
                              ),
                            )
                          ],
                        ),
                        /* width: 300,
                                  height: 400,*/
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(top: 0, left: 11.w, child: Image.asset(user3))
            ],
          ),
        ),
      ],
    );
