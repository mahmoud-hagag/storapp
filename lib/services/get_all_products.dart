import 'package:storapp/helper/api.dart';
import 'package:storapp/models/product_model.dart';

class GetAllProducts {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products',token: null);

    List<ProductModel> productList = [];

    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
