import 'package:dio/dio.dart';

class ApiServices {
  static const String _token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkIjoiNjI5YWY1YTJkNzdmNTk0NzFhYjI0MDA3IiwidXNlcm5hbWUiOiJ0ZWNobmljYWx0ZXN0Iiwicm9sZSI6W3siX2lkIjoiNjIxYTA0MTdmZjk4ODdhNWUxYzE5YTkwIiwibmFtZSI6InZlbmRvciIsIl9fdiI6MH1dLCJuYW1lIjoiVGVjaG5pY2FsIFRlc3QiLCJlbWFpbCI6InRlY2hpbmljYWx0ZXN0QGdtYWlsLmNvbSIsInBob25lIjoiNjk0MjA2OTQyMCJ9LCJpYXQiOjE2NTQzMjI3NTQsImV4cCI6MTk2OTg5ODc1NH0.ih0Mxu0ReMhQzPeyv8Rm_2Tvq3pu-erj47QW_VN3JZk';
  static String baseUrl = 'https://stagingshoppe.carclenx.com/v1.0/';
  static String getProduct = 'product/vendor/';
  static String getAllMakes = 'make/';
  static String urlForPostmake = 'model/makes';
  static String getAllCatagorys = 'product-category/';
  static String getAllSubCatagory =
      'product-sub-category/category/:';
  static String addProduct = 'product/';
  static final Dio dio = Dio();
  static final option = Options(
      headers: {"Authorization": "Bearer $_token"},
      responseType: ResponseType.json);
}
