import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/app.dart';
import 'package:nft_app/src/constants/assets.dart';
import 'package:nft_app/src/widgets/custom_shapes/recent.dart';

Widget recentCard({required String imageUrl}) {
  double width = 170.w;
  return SizedBox(
    height: 200.h,
    width: width,
    child: Stack(
      children: [
        Positioned(
          top: 0,
          left: -10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(7.r),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: CustomPaint(
            size: Size(width, (width * 0.345679012345679).toDouble()),
            painter: RecentCustomShape(),
            child: Container(
              padding: EdgeInsets.fromLTRB(19.w, 5.h, 9.w, 5.h),
              height: 56.h,
              width: 170.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 50.w,
                      height: 15.h,
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
                        'ETH 2.25',
                        color: CustomColors.white,
                        fontSize: 8.sp,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      KText(
                        'The Unknown',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        decoration: const ShapeDecoration(
                            shape: StadiumBorder(), color: Color(0XFFF1F1F1)),
                        child: Row(
                          children: [
                            Image.asset(
                              user1,
                              filterQuality: FilterQuality.high,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.w),
                              child: KText(
                                'IamJackRider',
                                fontSize: 8.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
