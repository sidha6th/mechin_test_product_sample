import 'package:mechine_test/extra/exports.dart';

IconData off = Icons.radio_button_off;
IconData on = Icons.radio_button_on;

class ExpansionTileDataPage extends StatelessWidget {
  const ExpansionTileDataPage({
    required this.title,
    required this.expansionPage,
    required this.trailing,
    Key? key,
  }) : super(key: key);
  final String title;
  final ExpansionPage expansionPage;
  final List<Widget> trailing;

  @override
  Widget build(BuildContext context) {
    bool isAllSelected = false;
    AddScreenState addScreenState = AddScreenState();
    IconData currenticon = off;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 50),
        child: AppbarWidget(
          title: title,
          trailing: trailing,
        ),
      ),
      body: FutureBuilder(
        future: null,
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: expansionPage == ExpansionPage.brand
                ? addScreenState.brandList.length
                : addScreenState.modelList.length + 1,
            itemBuilder: (_, index) => (expansionPage == ExpansionPage.model &&
                    index == 0)
                ? Row(
                    children: [
                      StatefulBuilder(builder: (_, changeState) {
                        return Checkbox(
                            value: isAllSelected,
                            onChanged: (value) {
                              value != null ? isAllSelected = value : isAllSelected;
                              changeState(() {});
                            });
                      }),
                      const TxtWidget(text: 'Select All')
                    ],
                  )
                : ListTile(
                    onTap: () {
                      expansionPage == ExpansionPage.brand
                          ? {
                              addScreenState.brandList[index].isSelected
                                  ? {
                                      currenticon = off,
                                      addScreenState.brandList[index].isSelected =
                                          false,
                                    }
                                  : {
                                      currenticon = on,
                                      addScreenState.brandList[index].isSelected =
                                          true,
                                    }
                            }
                          : addScreenState.modelList[index - 1].isSelected == true
                              ? {
                                  addScreenState.modelList[index - 1].isSelected =
                                      false,
                                  currenticon = off
                                }
                              : {
                                  addScreenState.modelList[index - 1].isSelected =
                                      true,
                                  currenticon = on
                                };
                    },
                    title: TxtWidget(
                      text: expansionPage == ExpansionPage.brand
                          ? addScreenState.brandList[index].name
                          : addScreenState.modelList[index - 1].name,
                    ),
                    trailing: StatefulBuilder(
                      builder: (_, changeState) {
                        return IconButton(
                          onPressed: () {
                            expansionPage == ExpansionPage.brand
                                ? {
                                    addScreenState.brandList[index].isSelected
                                        ? {
                                            currenticon = off,
                                            addScreenState.brandList[index]
                                                .isSelected = false,
                                          }
                                        : {
                                            currenticon = on,
                                            addScreenState
                                                .brandList[index].isSelected = true,
                                          }
                                  }
                                : addScreenState.modelList[index - 1].isSelected ==
                                        true
                                    ? {
                                        addScreenState.modelList[index - 1]
                                            .isSelected = false,
                                        currenticon = off
                                      }
                                    : {
                                        addScreenState
                                            .modelList[index - 1].isSelected = true,
                                        currenticon = on
                                      };
                            changeState(() {});
                          },
                          icon: Icon(
                            currenticon,
                            color: green,
                          ),
                        );
                      },
                    ),
                  ),
          );
        }
      ),
    );
  }
}
