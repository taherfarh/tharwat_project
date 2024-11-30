import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tharwat_project/helpers/api.dart';

class GetAllCategories {
  Future<List<dynamic>> getallcategories() async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products/categories");

    return data;
  }
}
