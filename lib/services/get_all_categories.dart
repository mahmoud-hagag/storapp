import 'package:storapp/helper/api.dart';

class GetAllCategory {
  Future<List<dynamic>> getAllCategory() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories',token: null);
    return data;
  }
}
