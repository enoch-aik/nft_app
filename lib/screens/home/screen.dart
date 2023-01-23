import 'package:flutter/services.dart';
import 'dart:ui' as ui;
import 'package:nft_app/app.dart';
import 'package:nft_app/screens/home/components/trending_card.dart';
import 'package:nft_app/src/constants/assets.dart';
import 'package:nft_app/src/widgets/custom_shapes/trending.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ui.Image image;

  @override
  void initState() {
    super.initState();
  }

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
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(29.w, 20.h, 0, 20.h),
            child: KText(
              'Trending',
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          TrendingCard()
        ],
      ),
    ));
  }

}
