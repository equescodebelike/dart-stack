import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart' as mypod;  // Используем алиас mypod

class OrderEndpoint extends Endpoint {
  // Создание заказа
  Future<int> createOrder(Session session, mypod.Order order) async {  // Используем mypod.Order
    await mypod.Order.insert(session, order);
    return order.id!;
  }

  // Чтение всех заказов
  Future<List<mypod.Order>> getAllOrders(Session session) async {  // Используем mypod.Order
    return await mypod.Order.find(session);
  }

  // Обновление заказа
  Future<bool> updateOrder(Session session, mypod.Order order) async {  // Используем mypod.Order
    var existingOrder = await mypod.Order.findById(session, order.id!);
    if (existingOrder == null) return false;

    await mypod.Order.update(session, order);
    return true;
  }

  // Удаление заказа
  Future<bool> deleteOrder(Session session, int orderId) async {
    var deletedRows = await mypod.Order.delete(session, where: (o) => o.id.equals(orderId));
    return deletedRows > 0;
  }
}
