import 'package:storapp/helper/api.dart';
import 'package:storapp/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> addProduct({
    required int id,
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    // ignore: avoid_print
    print('product = $id');
    Map<String, dynamic> data = await Api().put(
        url: 'https://fakestoreapi.com/products/$id',
        body: {
          "id": id.toString(),
          "title": title,
          "price": price,
          "description": desc,
          "image": image,
          "category": category,
        },
        token: null);
    return ProductModel.fromJson(data);
  }
}
