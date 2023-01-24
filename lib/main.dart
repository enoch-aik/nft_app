import 'package:nft_app/screens/home/components/bottom_nav_icon.dart';
import 'package:nft_app/screens/home/screen.dart';
import 'package:nft_app/src/constants/bottom_nav.dart';
import 'package:nft_app/src/res/theme.dart';

import 'app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'NFT App',
            debugShowCheckedModeBanner: false,
            theme: appTheme,
            home: const MainApp(),
          );
        });
  }
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> selectedNav = ValueNotifier(0);
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
            valueListenable: selectedNav,
            builder: (context, navState, _) {
              return Stack(
                children: [
                  navScreens[navState],
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 22.h),
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
                                  (index) => InkWell(
                                        onTap: () {
                                          selectedNav.value = index;
                                        },
                                        child: bottomNavIcon(
                                            iconPath: bottomNavIcons[index],
                                            value: navState,
                                            index: index),
                                      )),
                            ],
                          ),
                        )),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
