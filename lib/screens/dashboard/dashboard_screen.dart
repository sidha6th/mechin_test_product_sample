import 'package:mechine_test/extra/exports.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
          title: const TxtWidget(
            text: 'Dashboard',
            color: black,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  space10,
                  const TxtWidget(
                    text: 'Hello vendor',
                    size: 25,
                  ),
                  space10,
                  SizedBox(
                    height: context.getSize().height * 0.15,
                    width: context.getSize().width,
                    child: const DashboardChoiceSectionWidget(),
                  ),
                  space10,
                  const TxtWidget(
                    text: 'products',
                    size: 25,
                  ),
                  space10,
                  const ListDataHoldingWidget()
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8.0,
                  ),
                  child: FloatingActionButton(
                    heroTag: 'addScreen',
                    onPressed: () {
                      Get.to(
                        const ProductAddScreen(),
                      );
                    },
                    child: const Icon(
                      Icons.add,
                      color: yellow,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.store_mall_directory_rounded,
            color: yellow,
          ),
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
      );
}
