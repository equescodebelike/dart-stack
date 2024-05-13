/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'category.dart' as _i2;
import 'order.dart' as _i3;
import 'order_part.dart' as _i4;
import 'product.dart' as _i5;
import 'user.dart' as _i6;
export 'category.dart';
export 'order.dart';
export 'order_part.dart';
export 'product.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Category) {
      return _i2.Category.fromJson(data, this) as T;
    }
    if (t == _i3.Order) {
      return _i3.Order.fromJson(data, this) as T;
    }
    if (t == _i4.OrderPart) {
      return _i4.OrderPart.fromJson(data, this) as T;
    }
    if (t == _i5.Product) {
      return _i5.Product.fromJson(data, this) as T;
    }
    if (t == _i6.User) {
      return _i6.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Category?>()) {
      return (data != null ? _i2.Category.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Order?>()) {
      return (data != null ? _i3.Order.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.OrderPart?>()) {
      return (data != null ? _i4.OrderPart.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Product?>()) {
      return (data != null ? _i5.Product.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.User?>()) {
      return (data != null ? _i6.User.fromJson(data, this) : null) as T;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Category) {
      return 'Category';
    }
    if (data is _i3.Order) {
      return 'Order';
    }
    if (data is _i4.OrderPart) {
      return 'OrderPart';
    }
    if (data is _i5.Product) {
      return 'Product';
    }
    if (data is _i6.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Category') {
      return deserialize<_i2.Category>(data['data']);
    }
    if (data['className'] == 'Order') {
      return deserialize<_i3.Order>(data['data']);
    }
    if (data['className'] == 'OrderPart') {
      return deserialize<_i4.OrderPart>(data['data']);
    }
    if (data['className'] == 'Product') {
      return deserialize<_i5.Product>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i6.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
