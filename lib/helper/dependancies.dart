import 'package:api_flutter/data/api/api_client.dart';
import 'package:api_flutter/data/controllers/popular_product_controller.dart';
import 'package:api_flutter/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: "http://mvs.bslmeiyu.com"));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
