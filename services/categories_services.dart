import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tharwat_project/helpers/api.dart';
import 'package:tharwat_project/models/prduct_model.dart';

class GetCategories {
  Future<List<ProductModel>> getCategories(
      {required String categoryName}) async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products/category/${categoryName}");

    List<ProductModel> product = [];

    for (int i = 0; i < data.length; i++) {
      product.add(ProductModel.fromJson(data[i]));
    }
    return product;
  }
}
