import 'package:nft_app/screens/home/screen.dart';
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
      builder: (context,child) {
        return MaterialApp(
          title: 'NFT App',
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          home: const HomeScreen(),
        );
      }
    );
  }
}