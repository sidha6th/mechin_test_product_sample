import 'package:mechine_test/extra/exports.dart';

class AddScreenState extends GetxController {
  TextEditingController productNameController = TextEditingController();
  TextEditingController mrpController = TextEditingController();
  TextEditingController offerPriceController = TextEditingController();
  TextEditingController inCountController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  static String? currentCatagoryId;
  static List<ModelListmodel> modelSelectedValues = [];
  static List<BrandListModle> brandListModle = [];

  static String brandValue = 'VOLSWAGEN';
  static String modelValue = 'Select Models';

  List<ModelListmodel> modelList = [
    ModelListmodel(name: 'CROSS POLO'),
    ModelListmodel(name: 'JETTA'),
    ModelListmodel(name: 'PASSAT'),
    ModelListmodel(name: 'T-ROC'),
    ModelListmodel(name: 'BEETLE'),
    ModelListmodel(name: 'TIGUAN'),
    ModelListmodel(name: 'POLO'),
    ModelListmodel(name: 'VENTO'),
    ModelListmodel(name: 'AMEO'),
  ];
  List<BrandListModle> brandList = [
    BrandListModle(name: 'SUZUKI'),
    BrandListModle(name: 'HYUNDAI'),
    BrandListModle(name: 'HONDA'),
    BrandListModle(name: 'TATA'),
    BrandListModle(name: 'FORD'),
    BrandListModle(name: 'VOLSWAGEN'),
  ];
  static List<String> catagory = [
    'WHEELS',
    'ACCESSORIES',
    'CHEMICALS',
    'CAMERA',
  ];
}

enum ExpansionPage {
  model,
  brand,
}

class ModelListmodel {
  final String name;
  bool isSelected;
  ModelListmodel({
    this.isSelected = false,
    required this.name,
  });
}

class BrandListModle {
  final String name;
  bool isSelected;
  BrandListModle({
    required this.name,
    this.isSelected = false,
  });
}
