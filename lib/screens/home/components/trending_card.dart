import 'package:nft_app/app.dart';
import 'package:nft_app/models/nft.dart';
import 'package:nft_app/screens/home/components/trending_details.dart';
import 'package:nft_app/src/constants/assets.dart';
import 'package:nft_app/src/widgets/custom_shapes/trending.dart';

class TrendingCard extends StatelessWidget {
  final NFT nft;

  const TrendingCard({Key? key, required this.nft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 269.w,
      height: 375.h,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: ClipPath(
                clipper: TrendingCustomShape(),
                child: Container(
                  width: 238.w,
                  height: 330.h,
                  decoration: BoxDecoration(
                    color: CustomColors.white,
                    boxShadow: [
                      BoxShadow(
                          color: CustomColors.black.withOpacity(0.1),
                          blurRadius: 30,
                          offset: const Offset(10, 30))
                    ],
                  ),
                )),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: ClipPath(
                  clipper: TrendingCustomShape(),
                  child: Image.asset(
                    nft.imageUrl,
                    //width: 203.w,
                    height: 325.h, alignment: Alignment.center,
                    //width: 203.w,
                  )),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 87.w,
            child: TrendingDetails(
              nft: nft,
            ),
          )
        ],
      ),
    );
  }
}
