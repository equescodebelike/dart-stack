/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class OrderPart extends _i1.SerializableEntity {
  OrderPart._({
    this.id,
    required this.productId,
    required this.amount,
    required this.orderId,
    required this.status,
  });

  factory OrderPart({
    int? id,
    required int productId,
    required int amount,
    required int orderId,
    required String status,
  }) = _OrderPartImpl;

  factory OrderPart.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return OrderPart(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      productId:
          serializationManager.deserialize<int>(jsonSerialization['productId']),
      amount:
          serializationManager.deserialize<int>(jsonSerialization['amount']),
      orderId:
          serializationManager.deserialize<int>(jsonSerialization['orderId']),
      status:
          serializationManager.deserialize<String>(jsonSerialization['status']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int productId;

  int amount;

  int orderId;

  String status;

  OrderPart copyWith({
    int? id,
    int? productId,
    int? amount,
    int? orderId,
    String? status,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      'amount': amount,
      'orderId': orderId,
      'status': status,
    };
  }
}

class _Undefined {}

class _OrderPartImpl extends OrderPart {
  _OrderPartImpl({
    int? id,
    required int productId,
    required int amount,
    required int orderId,
    required String status,
  }) : super._(
          id: id,
          productId: productId,
          amount: amount,
          orderId: orderId,
          status: status,
        );

  @override
  OrderPart copyWith({
    Object? id = _Undefined,
    int? productId,
    int? amount,
    int? orderId,
    String? status,
  }) {
    return OrderPart(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      amount: amount ?? this.amount,
      orderId: orderId ?? this.orderId,
      status: status ?? this.status,
    );
  }
}
