import 'package:nft_app/app.dart';
import 'package:nft_app/models/nft.dart';

class TrendingDetails extends StatelessWidget {
  final NFT nft;

  const TrendingDetails({Key? key, required this.nft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.h,
      width: 170.w,
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
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              KText(
                nft.name,
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),

            ],
          )
        ],
      ),
    );
  }
}
