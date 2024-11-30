import 'dart:convert';

import 'package:tharwat_project/helpers/api.dart';
import 'package:tharwat_project/models/prduct_model.dart';

import '../analysis_options.yaml';
import 'package:http/http.dart' as http;

class GetAllProduct {
  Future<List<ProductModel>> getallproduct() async {
   List<dynamic> data  = await  Api().get(url: "https://fakestoreapi.com/products");

    
      

      List<ProductModel> product = [];

      for (int i = 0; i < data.length; i++) {
        product.add(ProductModel.fromJson(data[i]));
      }

      return product;
    } 
  }

