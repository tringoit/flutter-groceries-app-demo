import 'package:get/get.dart';
import '../common/models/listProducts.dart';
import '../core/constants/path.dart';

class MyCartController extends GetxController {
  late final Rx<List<Product>> productList;
  late final Rx<List<Product>> bestSellingList;
  late final Rx<List<Product>> cartList;
  late final Rx<List<Product>> beveragesList;
  late final Rx<List<Product>> favoriteList;
  late final Rx<List<Product>> groceriesList;
  late final Rx<double> checkoutPrice;

  @override
  void onInit() {
    productList = Rx<List<Product>>([]);
    bestSellingList = Rx<List<Product>>([]);
    cartList = Rx<List<Product>>([]);

    beveragesList = Rx<List<Product>>([]);
    favoriteList = Rx<List<Product>>([]);
    groceriesList = Rx<List<Product>>([]);
    checkoutPrice = Rx<double>(0);
    productList.value.addAll(listProduct);
    //cartList.value.addAll(listProduct);
    bestSellingList.value.addAll(bestSelling);
    beveragesList.value.addAll(listBeverages);
    groceriesList.value.addAll(listGroceries);
    //favoriteList.value.addAll(listBeverages);
    super.onInit();
  }

  checkExistProductCart(name, description, url, price, int quantity) {
    int index = -1;
    cartList.value.asMap().forEach((key, product) {
      if (product.name == name) {
        index = key;
      }
    });
    if (index != -1) {
      //Lấy số lượng hiện tại
      int currentQuantity = cartList.value[index].quantity;
      //Cộng sản phẩm khi ấn nút thêm
      cartList.value[index].quantity = currentQuantity + quantity;
    } else {
      cartList.value.add(Product(name, description, url, price, quantity));
    }
  }
}
