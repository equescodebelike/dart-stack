/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Product extends _i1.SerializableEntity {
  Product._({
    this.id,
    required this.name,
    required this.units,
    required this.minSize,
    required this.cost,
    required this.categoryId,
    required this.shopId,
    required this.imageUrl,
  });

  factory Product({
    int? id,
    required String name,
    required String units,
    required int minSize,
    required double cost,
    required int categoryId,
    required int shopId,
    required String imageUrl,
  }) = _ProductImpl;

  factory Product.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Product(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      units:
          serializationManager.deserialize<String>(jsonSerialization['units']),
      minSize:
          serializationManager.deserialize<int>(jsonSerialization['minSize']),
      cost: serializationManager.deserialize<double>(jsonSerialization['cost']),
      categoryId: serializationManager
          .deserialize<int>(jsonSerialization['categoryId']),
      shopId:
          serializationManager.deserialize<int>(jsonSerialization['shopId']),
      imageUrl: serializationManager
          .deserialize<String>(jsonSerialization['imageUrl']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String units;

  int minSize;

  double cost;

  int categoryId;

  int shopId;

  String imageUrl;

  Product copyWith({
    int? id,
    String? name,
    String? units,
    int? minSize,
    double? cost,
    int? categoryId,
    int? shopId,
    String? imageUrl,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'units': units,
      'minSize': minSize,
      'cost': cost,
      'categoryId': categoryId,
      'shopId': shopId,
      'imageUrl': imageUrl,
    };
  }
}

class _Undefined {}

class _ProductImpl extends Product {
  _ProductImpl({
    int? id,
    required String name,
    required String units,
    required int minSize,
    required double cost,
    required int categoryId,
    required int shopId,
    required String imageUrl,
  }) : super._(
          id: id,
          name: name,
          units: units,
          minSize: minSize,
          cost: cost,
          categoryId: categoryId,
          shopId: shopId,
          imageUrl: imageUrl,
        );

  @override
  Product copyWith({
    Object? id = _Undefined,
    String? name,
    String? units,
    int? minSize,
    double? cost,
    int? categoryId,
    int? shopId,
    String? imageUrl,
  }) {
    return Product(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      units: units ?? this.units,
      minSize: minSize ?? this.minSize,
      cost: cost ?? this.cost,
      categoryId: categoryId ?? this.categoryId,
      shopId: shopId ?? this.shopId,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}
