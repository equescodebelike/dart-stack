/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Product extends _i1.TableRow {
  Product._({
    int? id,
    required this.name,
    required this.units,
    required this.minSize,
    required this.cost,
    required this.categoryId,
    required this.shopId,
    required this.imageUrl,
  }) : super(id);

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

  static final t = ProductTable();

  static const db = ProductRepository._();

  String name;

  String units;

  int minSize;

  double cost;

  int categoryId;

  int shopId;

  String imageUrl;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'units': units,
      'minSize': minSize,
      'cost': cost,
      'categoryId': categoryId,
      'shopId': shopId,
      'imageUrl': imageUrl,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'units':
        units = value;
        return;
      case 'minSize':
        minSize = value;
        return;
      case 'cost':
        cost = value;
        return;
      case 'categoryId':
        categoryId = value;
        return;
      case 'shopId':
        shopId = value;
        return;
      case 'imageUrl':
        imageUrl = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Product>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Product>(
      where: where != null ? where(Product.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Product?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Product>(
      where: where != null ? where(Product.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Product?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Product>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProductTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Product>(
      where: where(Product.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Product>(
      where: where != null ? where(Product.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ProductInclude include() {
    return ProductInclude._();
  }

  static ProductIncludeList includeList({
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    ProductInclude? include,
  }) {
    return ProductIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Product.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Product.t),
      include: include,
    );
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

class ProductTable extends _i1.Table {
  ProductTable({super.tableRelation}) : super(tableName: 'product') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    units = _i1.ColumnString(
      'units',
      this,
    );
    minSize = _i1.ColumnInt(
      'minSize',
      this,
    );
    cost = _i1.ColumnDouble(
      'cost',
      this,
    );
    categoryId = _i1.ColumnInt(
      'categoryId',
      this,
    );
    shopId = _i1.ColumnInt(
      'shopId',
      this,
    );
    imageUrl = _i1.ColumnString(
      'imageUrl',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString units;

  late final _i1.ColumnInt minSize;

  late final _i1.ColumnDouble cost;

  late final _i1.ColumnInt categoryId;

  late final _i1.ColumnInt shopId;

  late final _i1.ColumnString imageUrl;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        units,
        minSize,
        cost,
        categoryId,
        shopId,
        imageUrl,
      ];
}

@Deprecated('Use ProductTable.t instead.')
ProductTable tProduct = ProductTable();

class ProductInclude extends _i1.IncludeObject {
  ProductInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Product.t;
}

class ProductIncludeList extends _i1.IncludeList {
  ProductIncludeList._({
    _i1.WhereExpressionBuilder<ProductTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Product.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Product.t;
}

class ProductRepository {
  const ProductRepository._();

  Future<List<Product>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Product>(
      where: where?.call(Product.t),
      orderBy: orderBy?.call(Product.t),
      orderByList: orderByList?.call(Product.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Product?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Product>(
      where: where?.call(Product.t),
      orderBy: orderBy?.call(Product.t),
      orderByList: orderByList?.call(Product.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Product?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Product>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Product>> insert(
    _i1.Session session,
    List<Product> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Product>(
      rows,
      transaction: transaction,
    );
  }

  Future<Product> insertRow(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Product>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Product>> update(
    _i1.Session session,
    List<Product> rows, {
    _i1.ColumnSelections<ProductTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Product>(
      rows,
      columns: columns?.call(Product.t),
      transaction: transaction,
    );
  }

  Future<Product> updateRow(
    _i1.Session session,
    Product row, {
    _i1.ColumnSelections<ProductTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Product>(
      row,
      columns: columns?.call(Product.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Product> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Product>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Product>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProductTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Product>(
      where: where(Product.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Product>(
      where: where?.call(Product.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
