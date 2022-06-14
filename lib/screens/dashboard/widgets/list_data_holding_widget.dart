import 'package:mechine_test/extra/exports.dart';

class ListDataHoldingWidget extends StatelessWidget {
  const ListDataHoldingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<List<ResultData>?>(
        future: AddScreenController.getProduct(1),
        builder: (context, AsyncSnapshot<List<ResultData>?> snapshot) {
          return snapshot.connectionState == ConnectionState.done
              ? snapshot.hasData
                  ? ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (_, index) {
                        return ListTile(
                          leading: (snapshot.data?[index].thumbURL == null ||
                                  snapshot.data![index].thumbURL!.isEmpty)
                              ? const CircleAvatar()
                              : CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      snapshot.data![index].imageURL![0]),
                                ),
                          title: TxtWidget(
                              text: snapshot.data![index].name ?? 'Unknown'),
                          subtitle: TxtWidget(
                            text: '\u{20B9} ${snapshot.data?[index].price}',
                            color: green,
                          ),
                          trailing: SizedBox(
                            width: 100,
                            child: Row(
                              children: <IconButton>[
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.edit,
                                    color: black,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.delete,
                                    color: black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                  : const Center(
                      child: TxtWidget(text: 'No data found'),
                    )
              : const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
