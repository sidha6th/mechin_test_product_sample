import 'package:mechine_test/extra/exports.dart';

class DashBoardChoiceCard extends StatelessWidget {
  const DashBoardChoiceCard({
    required this.name,
    required this.img,
    Key? key,
  }) : super(key: key);
  final String name;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getSize().width / 2 - 20,
      height: context.getSize().height * 0.15,
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(
          6,
        ),
      ),
      child: FittedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(img),
              ),
              space10,
              TxtWidget(
                text: name,
                color: white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
