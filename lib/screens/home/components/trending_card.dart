import 'package:nft_app/app.dart';
import 'package:nft_app/src/constants/assets.dart';
import 'package:nft_app/src/widgets/custom_shapes/trending.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 243.w,
      height: 365.h,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: ClipPath(
                clipper: TrendingCustomPainter(),
                child: Container(
                  width: 238.w,
                  height: 330.h,decoration: BoxDecoration(
                  color: CustomColors.white,

                  boxShadow: [
                  BoxShadow(
                      color: CustomColors.black.withOpacity(0.1),
                      blurRadius: 30,
                      offset: const Offset(10, 30))
                ],),
                )),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: ClipPath(
                  clipper: TrendingCustomPainter(),
                  child: Image.asset(
                    nft1,
                    //width: 203.w,
                    height: 325.h,
                    //width: 203.w,
                  )),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 87.w,
            child: TrendingCard(),
          )
        ],
      ),
    );
  }
}
