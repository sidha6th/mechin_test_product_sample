import 'package:fluttertoast/fluttertoast.dart';
import 'package:mechine_test/extra/exports.dart';

class CatagroySection extends StatelessWidget {
  const CatagroySection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String currentCatagory = '- - Select - -';
    return SizedBox(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TxtWidget(
                  text: 'Catagory',
                  color: Colors.grey,
                ),
                FutureBuilder(
                    future: AddScreenController.getAllCatagorys(),
                    builder: (context,
                        AsyncSnapshot<List<CatagoryResultData>?> snapshot) {
                      return StatefulBuilder(builder: (context, changeState) {
                        return snapshot.connectionState == ConnectionState.done
                            ? DropdownButton<String?>(
                                icon: const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: black,
                                ),
                                hint: TxtWidget(
                                  text: currentCatagory,
                                  color: black,
                                ),
                                isExpanded: true,
                                isDense: true,
                                items: snapshot.hasData
                                    ? snapshot.data?.map(
                                        (e) {
                                          return DropdownMenuItem<String?>(
                                            value: e.name,
                                            child: TxtWidget(
                                              text: e.name!,
                                            ),
                                          );
                                        },
                                      ).toList()
                                    : [],
                                onChanged: (String? value) {
                                  changeState(
                                    () {
                                      value != null
                                          ? currentCatagory = value
                                          : currentCatagory;
                                    },
                                  );
                                  for (var element in snapshot.data!) {
                                    if (element.name == currentCatagory) {
                                      AddScreenState.currentCatagoryId =
                                          element.sId.toString();
                                      break;
                                    }
                                    AddScreenController.getAllSubCatagorys(
                                        AddScreenState.currentCatagoryId,
                                        currentCatagory);
                                  }
                                },
                              )
                            : fakeDropdown;
                      });
                    }),
              ],
            ),
          ),
          space20,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TxtWidget(
                  text: 'Sub-Catagory',
                  color: Colors.grey,
                ),
                StatefulBuilder(
                  builder: (_, changeState) {
                    return GestureDetector(
                      onTap: () {
                        currentCatagory.contains('- - Select - -')
                            ? changeState(
                                () {
                                  Fluttertoast.showToast(
                                    msg: "Should select the Catagory First",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: black,
                                    textColor: white,
                                    fontSize: 16.0,
                                  );
                                },
                              )
                            : '';
                      },
                      child: DropdownButton<dynamic>(
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: black,
                        ),
                        hint: const TxtWidget(
                          text: '- - Select - -',
                          color: black,
                        ),
                        isExpanded: true,
                        isDense: true,
                        items: const [],
                        onChanged: (va) {},
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
