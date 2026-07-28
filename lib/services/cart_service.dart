import '../models/cart_item.dart';
import '../models/product.dart';

class CartService {
  static final CartService _instance = CartService._internal();
  factory CartService() => _instance;
  CartService._internal();

  final List<CartItem> _items = [];

  List<CartItem> get items => List.unmodifiable(_items);

  void addProduct(Product product, {int quantity = 1}) {
    final index = _items.indexWhere((item) => item.product.id == product.id);
    if (index >= 0) {
      _items[index].quantity += quantity;
    } else {
      _items.add(CartItem(product: product, quantity: quantity));
    }
  }

  void removeProduct(String productId) {
    _items.removeWhere((item) => item.product.id == productId);
  }

  void clear() {
    _items.clear();
  }

  double get total => _items.fold(0, (sum, item) => sum + item.totalPrice);
}
