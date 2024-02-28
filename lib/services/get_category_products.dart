import 'package:storapp/helper/api.dart';
import 'package:storapp/models/product_model.dart';

class CategoryProducts {
  Future<List<ProductModel>> getCategoryProducts(
      {required String categoryName}) async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName',token: null);
    List<ProductModel> productList = [];

    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
