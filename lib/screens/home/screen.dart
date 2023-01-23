import 'package:nft_app/app.dart';
import 'package:nft_app/src/constants/assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: SvgPicture.asset(logo),
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
        children: [Padding(
          padding:  EdgeInsets.only(left: 29.w),
          child: Text('Trending'),
        )],
      ),
    ));
  }
}
