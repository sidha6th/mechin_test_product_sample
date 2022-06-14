import 'package:mechine_test/extra/exports.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => GetMaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: white,
            elevation: 0,
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color.fromARGB(255, 31, 21, 19),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const DashBoard(),
      );
}
