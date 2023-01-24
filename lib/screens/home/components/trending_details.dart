import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/app.dart';
import 'package:nft_app/models/nft.dart';
import 'package:nft_app/src/constants/assets.dart';

class TrendingDetails extends StatelessWidget {
  final NFT nft;

  const TrendingDetails({Key? key, required this.nft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      width: 180.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: CustomColors.white.withOpacity(0.06),
            blurRadius: 30,
            offset: const Offset(10, 30),
          ),
        ],
        color: Colors.white,
        border: Border.all(color: CustomColors.borderColor, width: 2),
        borderRadius: BorderRadius.circular(15.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 11.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              KText(
                nft.name,
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),
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
                    'ETH ${nft.price}',
                    color: CustomColors.white,
                    fontSize: 8.sp,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    KText(
                      'Creator',
                      fontSize: 8.sp,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                    SizedBox(
                      child: Chip(
                          avatar: Image.asset(
                            user1,
                            filterQuality: FilterQuality.high,
                          ),
                          visualDensity:
                              const VisualDensity(horizontal: -4, vertical: -4),
                          labelPadding: EdgeInsets.zero,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          backgroundColor: const Color(0xffF1F1F1),
                          label: KText(
                            nft.creator,
                            fontSize: 8.sp,
                          )),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    KText(
                      'Owner',
                      fontSize: 8.sp,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                    SizedBox(
                      child: Chip(
                          avatar: Image.asset(
                            user1,
                            filterQuality: FilterQuality.high,
                          ),
                          visualDensity:
                              const VisualDensity(horizontal: -4, vertical: -4),
                          labelPadding: EdgeInsets.zero,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          backgroundColor: const Color(0xffF1F1F1),
                          label: KText(
                            nft.owner,
                            fontSize: 8.sp,
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 84.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11.r),
                    gradient: const LinearGradient(
                      transform: GradientRotation(1.6383406),
                      colors: [
                        Color(0xff1DD0DF),
                        Color(0xff1BEDFF),
                        Color(0xff14BDEB)
                      ],
                      stops: [0.02, 0.5, 1],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: KText(
                    'Place Bid',
                    fontSize: 10.sp,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: SizedBox(
                    height: 24.w,width: 24.w,
                    child: CircleAvatar(
                      backgroundColor: const Color(0xffF1F1F1),
                      child: Icon(Icons.favorite,size:17.w,color:  const Color(0xffF96900),),)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
