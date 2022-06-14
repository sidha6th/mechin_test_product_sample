import 'package:mechine_test/extra/exports.dart';

class BrandAndModelSection extends StatelessWidget {
  const BrandAndModelSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TxtWidget(
                  text: 'Brand',
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      ExpansionTileDataPage(
                        trailing: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: black,
                            ),
                          ),
                          Checkbox(
                            value: true,
                            onChanged: (bool? value) {},
                          ),
                        ],
                        title: 'Brand',
                        expansionPage: ExpansionPage.brand,
                      ),
                    );
                  },
                  child: DropdownButton<dynamic>(
                    value: '',
                    underline: emptybox,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: black,
                    ),
                    hint: const TxtWidget(
                      text: 'Brand',
                      color: black,
                    ),
                    isExpanded: true,
                    items: const [],
                    onChanged: (va) {},
                  ),
                ),
              ],
            ),
          ),
          space10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const TxtWidget(
                  text: 'Model',
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const ExpansionTileDataPage(
                      trailing: [],
                      title: 'Model',
                      expansionPage: ExpansionPage.model,
                    ));
                  },
                  child: DropdownButton<dynamic>(
                    underline: emptybox,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: black,
                    ),
                    hint: const TxtWidget(
                      text: 'Model',
                      color: black,
                    ),
                    isExpanded: true,
                    items: const [],
                    onChanged: (va) {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
