import 'package:api_flutter/data/repository/popular_product_repo.dart';
import 'package:api_flutter/models/popular_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  // [
  //   "a",
  //   "b",
  //   "c"
  // ]

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if(response.statusCode==200){
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      print(response.body);
      update(); // setstate();
    }else{}
  }
}
