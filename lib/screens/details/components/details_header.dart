import 'package:nft_app/app.dart';
import 'package:nft_app/models/nft.dart';
import 'package:nft_app/src/widgets/custom_shapes/nft_details.dart';

Widget detailsHeader(NFT nft) {
  return Stack(
    children: [
      ClipPath(
        clipper: NFTDetailsCustomShape(),
        child: Image.asset(
          nft.imageUrl,
          fit: BoxFit.scaleDown,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 330.0, right: 3),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 188.w,
            height: 63.h,
            decoration: ShapeDecoration(
                shape: const StadiumBorder(),
                color: CustomColors.white,
                shadows: [
                  BoxShadow(color: CustomColors.black.withOpacity(0.08))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                      height: 28.w,
                      width: 28.w,
                      child: CircleAvatar(
                        backgroundColor: const Color(0xffF1F1F1),
                        child: Icon(
                          Icons.favorite,
                          size: 24.w,
                          color: const Color(0xffF96900),
                        ),
                      )),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.ios_share,
                    size: 25.w,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.more_horiz_rounded,
                    size: 25.w,
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    ],
  );
}
