import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/app.dart';
import 'package:nft_app/screens/profile/components/liked.dart';
import 'package:nft_app/screens/profile/components/my_work.dart';
import 'package:nft_app/src/constants/assets.dart';

import 'components/profile_stats.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: ListView(
          children: [
            Material(
              elevation: 5,
              shadowColor: CustomColors.borderColor.withOpacity(0.7),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60.r),
                  bottomRight: Radius.circular(60.r)),
              child: Column(
                children: [
                  SizedBox(
                    height: 455.h,
                    width: 390.w,
                    child: Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(60.r),
                                bottomLeft: Radius.circular(60.r)),
                            child: Image.asset(profileBg)),
                        Positioned(
                            top: 30.h,
                            child: SizedBox(
                              width: 390.w,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                      whiteLogo,
                                      width: 73.w,
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: SvgPicture.asset(
                                          whiteNotificationIcon,
                                        )),
                                  ],
                                ),
                              ),
                            )),
                        Positioned.fill(
                          bottom: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(user4),
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.h),
                                child: KText(
                                  'IAmJackRider',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                ),
                              ),
                              Container(
                                height: 22.h,
                                width: 104.w,
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
                                  '#1 Seller',
                                  fontWeight: FontWeight.w500,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  fontSize: 10.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        profileStats(title: 'Artworks', stats: '120K'),
                        profileStats(title: 'Auctions', stats: '120K'),
                        profileStats(title: 'Earnings', stats: '255 ETH'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 3,
                tabs: [
                  Tab(
                    text: 'My work',
                  ),
                  Tab(
                    text: 'Liked',
                  )
                ]),
            SizedBox(height: 600.h,
              child: const TabBarView(
                  children: [MyWork(), LikedItems()]),
            )
          ],
        ),
      ),
    );
  }
}
