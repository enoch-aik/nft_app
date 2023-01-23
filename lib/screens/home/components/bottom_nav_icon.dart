import 'package:nft_app/app.dart';

Widget bottomNavIcon(
    {required String iconPath, required int value, required int index}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.all(4.h),
        child: SvgPicture.asset(
          iconPath,
          color:
              value == index ? CustomColors.textColor : const Color(0xff878787),
        ),
      ),
      value == index
          ? Container(
              width: 6,
              height: 6,
              decoration: const BoxDecoration(
                  color: CustomColors.appColor, shape: BoxShape.circle),
            )
          : const SizedBox(
              height: 6,
              width: 6,
            ),
    ],
  );
}
