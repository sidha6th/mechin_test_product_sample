import 'package:mechine_test/extra/exports.dart';

class CustomTextFormFieldWdget extends StatelessWidget {
  const CustomTextFormFieldWdget({
    required this.controller,
    required this.hintText,
    this.maxlines = 1,
    Key? key,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
