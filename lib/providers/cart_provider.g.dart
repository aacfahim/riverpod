// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cartTotalHash() => r'a86298e3a0a88955f932013f1cecb2532a8cea29';

/// See also [cartTotal].
@ProviderFor(cartTotal)
final cartTotalProvider = AutoDisposeProvider<double>.internal(
  cartTotal,
  name: r'cartTotalProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartTotalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CartTotalRef = AutoDisposeProviderRef<double>;
String _$cartNotifierHash() => r'e7b7a3cede4aba50438033b0e0968ef496fe8078';

/// See also [CartNotifier].
@ProviderFor(CartNotifier)
final cartNotifierProvider =
    AutoDisposeNotifierProvider<CartNotifier, Set<Product>>.internal(
  CartNotifier.new,
  name: r'cartNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CartNotifier = AutoDisposeNotifier<Set<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
