/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class OrderPart extends _i1.TableRow {
  OrderPart._({
    int? id,
    required this.productId,
    required this.amount,
    required this.orderId,
    required this.status,
  }) : super(id);

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

  static final t = OrderPartTable();

  static const db = OrderPartRepository._();

  int productId;

  int amount;

  int orderId;

  String status;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'productId': productId,
      'amount': amount,
      'orderId': orderId,
      'status': status,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      'amount': amount,
      'orderId': orderId,
      'status': status,
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
      case 'productId':
        productId = value;
        return;
      case 'amount':
        amount = value;
        return;
      case 'orderId':
        orderId = value;
        return;
      case 'status':
        status = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<OrderPart>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderPartTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<OrderPart>(
      where: where != null ? where(OrderPart.t) : null,
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
  static Future<OrderPart?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderPartTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<OrderPart>(
      where: where != null ? where(OrderPart.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<OrderPart?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<OrderPart>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OrderPartTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<OrderPart>(
      where: where(OrderPart.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    OrderPart row, {
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
    OrderPart row, {
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
    OrderPart row, {
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
    _i1.WhereExpressionBuilder<OrderPartTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<OrderPart>(
      where: where != null ? where(OrderPart.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static OrderPartInclude include() {
    return OrderPartInclude._();
  }

  static OrderPartIncludeList includeList({
    _i1.WhereExpressionBuilder<OrderPartTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrderPartTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderPartTable>? orderByList,
    OrderPartInclude? include,
  }) {
    return OrderPartIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(OrderPart.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(OrderPart.t),
      include: include,
    );
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

class OrderPartTable extends _i1.Table {
  OrderPartTable({super.tableRelation}) : super(tableName: 'order_part') {
    productId = _i1.ColumnInt(
      'productId',
      this,
    );
    amount = _i1.ColumnInt(
      'amount',
      this,
    );
    orderId = _i1.ColumnInt(
      'orderId',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
  }

  late final _i1.ColumnInt productId;

  late final _i1.ColumnInt amount;

  late final _i1.ColumnInt orderId;

  late final _i1.ColumnString status;

  @override
  List<_i1.Column> get columns => [
        id,
        productId,
        amount,
        orderId,
        status,
      ];
}

@Deprecated('Use OrderPartTable.t instead.')
OrderPartTable tOrderPart = OrderPartTable();

class OrderPartInclude extends _i1.IncludeObject {
  OrderPartInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => OrderPart.t;
}

class OrderPartIncludeList extends _i1.IncludeList {
  OrderPartIncludeList._({
    _i1.WhereExpressionBuilder<OrderPartTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(OrderPart.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => OrderPart.t;
}

class OrderPartRepository {
  const OrderPartRepository._();

  Future<List<OrderPart>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderPartTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrderPartTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderPartTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<OrderPart>(
      where: where?.call(OrderPart.t),
      orderBy: orderBy?.call(OrderPart.t),
      orderByList: orderByList?.call(OrderPart.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<OrderPart?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderPartTable>? where,
    int? offset,
    _i1.OrderByBuilder<OrderPartTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderPartTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<OrderPart>(
      where: where?.call(OrderPart.t),
      orderBy: orderBy?.call(OrderPart.t),
      orderByList: orderByList?.call(OrderPart.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<OrderPart?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<OrderPart>(
      id,
      transaction: transaction,
    );
  }

  Future<List<OrderPart>> insert(
    _i1.Session session,
    List<OrderPart> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<OrderPart>(
      rows,
      transaction: transaction,
    );
  }

  Future<OrderPart> insertRow(
    _i1.Session session,
    OrderPart row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<OrderPart>(
      row,
      transaction: transaction,
    );
  }

  Future<List<OrderPart>> update(
    _i1.Session session,
    List<OrderPart> rows, {
    _i1.ColumnSelections<OrderPartTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<OrderPart>(
      rows,
      columns: columns?.call(OrderPart.t),
      transaction: transaction,
    );
  }

  Future<OrderPart> updateRow(
    _i1.Session session,
    OrderPart row, {
    _i1.ColumnSelections<OrderPartTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<OrderPart>(
      row,
      columns: columns?.call(OrderPart.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<OrderPart> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<OrderPart>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    OrderPart row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<OrderPart>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OrderPartTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<OrderPart>(
      where: where(OrderPart.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderPartTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<OrderPart>(
      where: where?.call(OrderPart.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
