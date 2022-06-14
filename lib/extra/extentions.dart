import 'package:mechine_test/extra/exports.dart';

extension MediaQuerySize on BuildContext {
  Size getSize() => MediaQuery.of(this).size;
}
