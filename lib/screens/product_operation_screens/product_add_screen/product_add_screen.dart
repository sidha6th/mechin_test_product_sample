import 'package:mechine_test/extra/exports.dart';
import 'package:mechine_test/model/add_product_model.dart';

class ProductAddScreen extends StatelessWidget {
  const ProductAddScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final addScreenState = Get.put(AddScreenState());
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: AppbarWidget(
          title: 'Enter Product Details',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: <Widget>[
          CustomTextFormFieldWdget(
            hintText: 'Product Name',
            controller: addScreenState.productNameController,
          ),
          space10,
          CustomTextFormFieldWdget(
            hintText: 'Original Price / MRP',
            controller: addScreenState.mrpController,
          ),
          space10,
          CustomTextFormFieldWdget(
            hintText: 'Offer Price',
            controller: addScreenState.offerPriceController,
          ),
          space10,
          const BrandAndModelSection(),
          const CatagroySection(),
          space10,
          CustomTextFormFieldWdget(
            hintText: 'In Stock Count',
            controller: addScreenState.inCountController,
          ),
          space10,
          CustomTextFormFieldWdget(
            maxlines: 7,
            hintText: 'Description',
            controller: addScreenState.descriptionController,
          ),
          space10,
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.green),
            onPressed: () async {
              final data = AddProductModel(
                categoryId: AddScreenState.currentCatagoryId,
                description: addScreenState.descriptionController.text,
                name: addScreenState.productNameController.text,
                price: addScreenState.mrpController.text,
                offerPrice: addScreenState.offerPriceController.text,
                quantity: addScreenState.inCountController.text,
              );
              await AddScreenController.addProduct(data.tojson());
            },
            child: const TxtWidget(text: 'Submit'),
          ),
        ],
      ),
    );
  }
}
