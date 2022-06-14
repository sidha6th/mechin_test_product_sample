import 'package:mechine_test/extra/exports.dart';

const SizedBox emptybox = SizedBox();
const SizedBox space10 = SizedBox(
  height: 10,
  width: 10,
);
const SizedBox space20 = SizedBox(
  height: 20,
  width: 20,
);

final DropdownButton fakeDropdown= DropdownButton<String>(
  isExpanded: true,
  items:  const [],
  onChanged: (value) {},
  hint:  const TxtWidget(
    text: '- - Select - -',
    color: black,
  ),
);
