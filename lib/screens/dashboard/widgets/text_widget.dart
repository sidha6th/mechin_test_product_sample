import 'package:mechine_test/extra/exports.dart';

class TxtWidget extends StatelessWidget {
  const TxtWidget({
    required this.text,
    this.color,
    this.size,
    this.weight,
    Key? key,
  }) : super(key: key);
  final String text;
  final Color? color;
  final double? size;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
