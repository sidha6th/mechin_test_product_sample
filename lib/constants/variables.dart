import 'package:mechine_test/extra/exports.dart';

const List<Widget> bottomSheetCardItem = <Widget>[
  Card(
    color: Color.fromARGB(255, 10, 10, 10),
    child: SizedBox(
      width: 80,
      height: 80,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: CircleAvatar(
          maxRadius: 5,
          minRadius: 5,
          child: Icon(
            size: 40,
            Icons.person,
            color: Colors.grey,
          ),
        ),
      ),
    ),
  ),
  Card(
    color: Color.fromARGB(255, 10, 10, 10),
    child: SizedBox(
      width: 80,
      height: 80,
      child: Icon(
        size: 30,
        Icons.description_outlined,
        color: yellow,
      ),
    ),
  ),
  Card(
    color: Color.fromARGB(255, 10, 10, 10),
    child: SizedBox(
      width: 80,
      height: 80,
      child: Icon(
        size: 30,
        Icons.description_sharp,
        color: yellow,
      ),
    ),
  ),
  Card(
    color: Color.fromARGB(255, 10, 10, 10),
    child: SizedBox(
      width: 80,
      height: 80,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: CircleAvatar(
          backgroundColor: yellow,
          child: TxtWidget(
            color: black,
            size: 30,
            text: '?',
            weight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ),
  Card(
    color: Colors.red,
    child: SizedBox(
      width: 80,
      height: 80,
      child: Icon(
        Icons.logout,
        size: 40,
        color: white,
      ),
    ),
  )
];

List<String> bottomSheetCardItemLable = [
  'Profile',
  'Privacy Policy',
  ' Terms &\nCondition',
  'Support',
  'Logout',
];
