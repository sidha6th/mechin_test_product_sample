import 'dart:developer';

import 'package:mechine_test/extra/exports.dart';

class AddScreenController extends GetxController {
  static Future<List<ResultData>?> getProduct(int page) async {
    try {
      final res = await ApiServices.dio.get(
        ApiServices.baseUrl + ApiServices.getProduct + 1.toString(),
        options: ApiServices.option,
      );
      return ProductModel.fromJson(res.data).resultData;
    } on DioError catch (e) {
      debugPrint(e.response.toString());
      return null;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  static Future<List<MakesResultData>?> getAllMakes() async {
    try {
      final res = await ApiServices.dio.get(
        ApiServices.baseUrl + ApiServices.getAllMakes,
        options: ApiServices.option,
      );
      return MakesModel.fromJson(res.data).resultData;
    } on DioError catch (e) {
      debugPrint(e.response.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  static Future<List<CatagoryResultData>?> getAllCatagorys() async {
    try {
      final res = await ApiServices.dio.get(
        ApiServices.baseUrl + ApiServices.getAllCatagorys,
        options: ApiServices.option,
      );
      return CatagoryModel.fromJson(res.data).resultData;
    } on DioError catch (e) {
      debugPrint(e.response.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  static Future<List<MakesResultData>?> getAllSubCatagorys(
      String? id, String catagory) async {
    if (id != null) {
      try {
        final res = await ApiServices.dio.get(
          ApiServices.baseUrl + ApiServices.getAllSubCatagory + id,
          options: ApiServices.option,
        );
      } on DioError catch (e) {
        debugPrint('${e.response?.statusMessage.toString()}');
      } catch (e) {
        debugPrint(e.toString());
      }
    }
    return null;
  }

  static addProduct(Map<String, dynamic> body) async {
    try {
      final res = await ApiServices.dio.post(
        ApiServices.baseUrl + ApiServices.addProduct,
        data: {'Body': body},
        options: ApiServices.option,
      );
      log(res.statusCode.toString());
    } on DioError catch (e) {
      log('${e.response}');
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
