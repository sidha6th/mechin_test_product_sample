import 'package:mechine_test/extra/exports.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    required this.title,
    this.trailing = const[emptybox],
    Key? key,
  }) : super(key: key);
  final String title;
  final List<Widget> trailing;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.arrow_back,
          color: black,
        ),
      ),
      title: TxtWidget(
        text: title,
        color: black,
      ),
      centerTitle: true,
      automaticallyImplyLeading: true,
      actions: trailing,
    );
  }
}
