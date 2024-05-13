/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Order extends _i1.SerializableEntity {
  Order._({
    this.id,
    required this.orderDate,
    required this.customerId,
    required this.addresss,
  });

  factory Order({
    int? id,
    required DateTime orderDate,
    required int customerId,
    required String addresss,
  }) = _OrderImpl;

  factory Order.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Order(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      orderDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['orderDate']),
      customerId: serializationManager
          .deserialize<int>(jsonSerialization['customerId']),
      addresss: serializationManager
          .deserialize<String>(jsonSerialization['addresss']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime orderDate;

  int customerId;

  String addresss;

  Order copyWith({
    int? id,
    DateTime? orderDate,
    int? customerId,
    String? addresss,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'orderDate': orderDate.toJson(),
      'customerId': customerId,
      'addresss': addresss,
    };
  }
}

class _Undefined {}

class _OrderImpl extends Order {
  _OrderImpl({
    int? id,
    required DateTime orderDate,
    required int customerId,
    required String addresss,
  }) : super._(
          id: id,
          orderDate: orderDate,
          customerId: customerId,
          addresss: addresss,
        );

  @override
  Order copyWith({
    Object? id = _Undefined,
    DateTime? orderDate,
    int? customerId,
    String? addresss,
  }) {
    return Order(
      id: id is int? ? id : this.id,
      orderDate: orderDate ?? this.orderDate,
      customerId: customerId ?? this.customerId,
      addresss: addresss ?? this.addresss,
    );
  }
}
