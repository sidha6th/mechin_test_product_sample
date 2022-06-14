import 'package:mechine_test/extra/exports.dart';

class DashboardChoiceSectionWidget extends StatelessWidget {
  const DashboardChoiceSectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (_) => SizedBox(
                child: Wrap(
                  spacing: 15,
                  children: List.generate(
                    5,
                    (index) => SizedBox(
                      width: 80,
                      child: Column(
                        children: <Widget>[
                          bottomSheetCardItem[index],
                          FittedBox(
                            child: TxtWidget(
                              text: bottomSheetCardItemLable[index],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          child: const DashBoardChoiceCard(
            name: 'Analysis',
            img: 'assets/images/clipart2438534.png',
          ),
        ),
        const DashBoardChoiceCard(
          name: 'Rating &\nReviews',
          img: 'assets/images/star-icon-transparent-background-4.png',
        ),
      ],
    );
  }
}
