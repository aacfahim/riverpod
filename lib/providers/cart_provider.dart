import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_test/models/product.dart';
part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Set<Product> build() {
    return const {
      // Product(
      //     id: '7',
      //     title: 'Roller Skates',
      //     price: 52,
      //     image: 'assets/products/skates.png')
    };
  }

  // method to update state

  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((element) => element.id != product.id).toSet();
    }
  }
}

@riverpod
double cartTotal(ref) {
  double total = 0;
  final cartProducts = ref.watch(cartNotifierProvider);
  for (Product product in cartProducts) {
    total += product.price.toDouble();
  }

  return total;
}
