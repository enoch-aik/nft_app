import 'package:nft_app/app.dart';
import 'package:nft_app/screens/home/components/recent_card.dart';
import 'package:nft_app/src/constants/nft.dart';

class MyWork extends StatelessWidget {
  const MyWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: GridView.count(
        physics:const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        children: [
          ...List.generate(
              4,
                  (index) =>
                  recentCard(imageUrl: recentImages[index]))
        ],
      ),
    );
  }
}
