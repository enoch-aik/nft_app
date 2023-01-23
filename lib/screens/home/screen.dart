import 'package:flutter/services.dart';
import 'dart:ui' as ui;
import 'package:nft_app/app.dart';
import 'package:nft_app/models/nft.dart';
import 'package:nft_app/screens/home/components/bottom_nav_icon.dart';
import 'package:nft_app/screens/home/components/trending_card.dart';
import 'package:nft_app/src/constants/assets.dart';
import 'package:nft_app/src/constants/bottom_nav.dart';
import 'package:nft_app/src/constants/nft.dart';
import 'package:nft_app/src/widgets/custom_shapes/trending.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ValueNotifier<int> selectedNav = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: SvgPicture.asset(
            logo,
            width: 73.w,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: InkWell(
                onTap: () {}, child: SvgPicture.asset(notificationIcon)),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(29.w, 20.h, 0, 20.h),
            child: KText(
              'Trending',
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 380.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(left: index == 0 ? 20.w : 12.w),
                      child: TrendingCard(nft: trending[index]),
                    ),
                itemCount: trending.length),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(29.w, 20.h, 0, 20.h),
            child: KText(
              'Top Seller',
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      bottomSheet: ValueListenableBuilder(
          valueListenable: selectedNav,
          builder: (context, navState, _) {
            return Padding(
              padding: EdgeInsets.fromLTRB(30.w, 0, 30.w, 22.h),
              child: Container(
                width: 330.w,
                height: 64.h,
                decoration: BoxDecoration(
                  color: CustomColors.white,
                  borderRadius: BorderRadius.circular(26.r),
                  border: Border.all(color: CustomColors.borderColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...List.generate(
                        4,
                        (index) => InkWell(onTap: (){
                          selectedNav.value = index;
                        },
                          child: bottomNavIcon(
                              iconPath: bottomNavIcons[index],
                              value: navState,
                              index: index),
                        )),
                    /* SvgPicture.asset(homeIcon),
                SvgPicture.asset(discoverIcon),
                SvgPicture.asset(cartIcon),
                SvgPicture.asset(profileIcon),*/
                  ],
                ),
              ),
            );
          }),
    ));
  }
}
