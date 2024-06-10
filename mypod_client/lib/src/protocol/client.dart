/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:mypod_client/src/protocol/category.dart' as _i3;
import 'package:mypod_client/src/protocol/order.dart' as _i4;
import 'package:mypod_client/src/protocol/order_part.dart' as _i5;
import 'package:mypod_client/src/protocol/product.dart' as _i6;
import 'package:mypod_client/src/protocol/user.dart' as _i7;
import 'protocol.dart' as _i8;

/// {@category Endpoint}
class EndpointCategory extends _i1.EndpointRef {
  EndpointCategory(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'category';

  _i2.Future<int> createCategory(_i3.Category category) =>
      caller.callServerEndpoint<int>(
        'category',
        'createCategory',
        {'category': category},
      );

  _i2.Future<List<_i3.Category>> getAllCategories() =>
      caller.callServerEndpoint<List<_i3.Category>>(
        'category',
        'getAllCategories',
        {},
      );

  _i2.Future<bool> updateCategory(_i3.Category category) =>
      caller.callServerEndpoint<bool>(
        'category',
        'updateCategory',
        {'category': category},
      );

  _i2.Future<bool> deleteCategory(int categoryId) =>
      caller.callServerEndpoint<bool>(
        'category',
        'deleteCategory',
        {'categoryId': categoryId},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointOrder extends _i1.EndpointRef {
  EndpointOrder(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'order';

  _i2.Future<int> createOrder(_i4.Order order) =>
      caller.callServerEndpoint<int>(
        'order',
        'createOrder',
        {'order': order},
      );

  _i2.Future<List<_i4.Order>> getAllOrders() =>
      caller.callServerEndpoint<List<_i4.Order>>(
        'order',
        'getAllOrders',
        {},
      );

  _i2.Future<bool> updateOrder(_i4.Order order) =>
      caller.callServerEndpoint<bool>(
        'order',
        'updateOrder',
        {'order': order},
      );

  _i2.Future<bool> deleteOrder(int orderId) => caller.callServerEndpoint<bool>(
        'order',
        'deleteOrder',
        {'orderId': orderId},
      );
}

/// {@category Endpoint}
class EndpointOrderPart extends _i1.EndpointRef {
  EndpointOrderPart(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'orderPart';

  _i2.Future<int> createOrderPart(_i5.OrderPart orderPart) =>
      caller.callServerEndpoint<int>(
        'orderPart',
        'createOrderPart',
        {'orderPart': orderPart},
      );

  _i2.Future<List<_i5.OrderPart>> getAllOrderParts() =>
      caller.callServerEndpoint<List<_i5.OrderPart>>(
        'orderPart',
        'getAllOrderParts',
        {},
      );

  _i2.Future<bool> updateOrderPart(_i5.OrderPart orderPart) =>
      caller.callServerEndpoint<bool>(
        'orderPart',
        'updateOrderPart',
        {'orderPart': orderPart},
      );

  _i2.Future<bool> deleteOrderPart(int orderPartId) =>
      caller.callServerEndpoint<bool>(
        'orderPart',
        'deleteOrderPart',
        {'orderPartId': orderPartId},
      );
}

/// {@category Endpoint}
class EndpointProduct extends _i1.EndpointRef {
  EndpointProduct(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'product';

  _i2.Future<int> createProduct(_i6.Product product) =>
      caller.callServerEndpoint<int>(
        'product',
        'createProduct',
        {'product': product},
      );

  _i2.Future<List<_i6.Product>> getAllProducts() =>
      caller.callServerEndpoint<List<_i6.Product>>(
        'product',
        'getAllProducts',
        {},
      );

  _i2.Future<bool> updateProduct(_i6.Product product) =>
      caller.callServerEndpoint<bool>(
        'product',
        'updateProduct',
        {'product': product},
      );

  _i2.Future<bool> deleteProduct(int productId) =>
      caller.callServerEndpoint<bool>(
        'product',
        'deleteProduct',
        {'productId': productId},
      );
}

/// {@category Endpoint}
class EndpointUser extends _i1.EndpointRef {
  EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  _i2.Future<int> createUser(_i7.User user) => caller.callServerEndpoint<int>(
        'user',
        'createUser',
        {'user': user},
      );

  _i2.Future<List<_i7.User>> getAllUsers() =>
      caller.callServerEndpoint<List<_i7.User>>(
        'user',
        'getAllUsers',
        {},
      );

  _i2.Future<bool> updateUser(_i7.User user) => caller.callServerEndpoint<bool>(
        'user',
        'updateUser',
        {'user': user},
      );

  _i2.Future<bool> deleteUser(int userId) => caller.callServerEndpoint<bool>(
        'user',
        'deleteUser',
        {'userId': userId},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i8.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    category = EndpointCategory(this);
    example = EndpointExample(this);
    order = EndpointOrder(this);
    orderPart = EndpointOrderPart(this);
    product = EndpointProduct(this);
    user = EndpointUser(this);
  }

  late final EndpointCategory category;

  late final EndpointExample example;

  late final EndpointOrder order;

  late final EndpointOrderPart orderPart;

  late final EndpointProduct product;

  late final EndpointUser user;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'category': category,
        'example': example,
        'order': order,
        'orderPart': orderPart,
        'product': product,
        'user': user,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
