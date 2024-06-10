import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class OrderPartEndpoint extends Endpoint {
  // Создание части заказа
  Future<int> createOrderPart(Session session, OrderPart orderPart) async {
    await OrderPart.insert(session, orderPart);
    return orderPart.id!;
  }

  // Чтение всех частей заказа
  Future<List<OrderPart>> getAllOrderParts(Session session) async {
    return await OrderPart.find(session);
  }

  // Обновление части заказа
  Future<bool> updateOrderPart(Session session, OrderPart orderPart) async {
    var existingOrderPart = await OrderPart.findById(session, orderPart.id!);
    if (existingOrderPart == null) return false;

    await OrderPart.update(session, orderPart);
    return true;
  }

  // Удаление части заказа
  Future<bool> deleteOrderPart(Session session, int orderPartId) async {
    var deletedRows = await OrderPart.delete(session, where: (op) => op.id.equals(orderPartId));
    return deletedRows > 0;
  }
}
