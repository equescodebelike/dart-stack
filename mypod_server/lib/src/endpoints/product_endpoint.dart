import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class ProductEndpoint extends Endpoint {
  // Создание продукта
  Future<int> createProduct(Session session, Product product) async {
    await Product.insert(session, product);
    return product.id!;
  }

  // Чтение всех продуктов
  Future<List<Product>> getAllProducts(Session session) async {
    return await Product.find(session);
  }

  // Обновление продукта
  Future<bool> updateProduct(Session session, Product product) async {
    var existingProduct = await Product.findById(session, product.id!);
    if (existingProduct == null) return false;

    await Product.update(session, product);
    return true;
  }

  // Удаление продукта
  Future<bool> deleteProduct(Session session, int productId) async {
    var deletedRows = await Product.delete(session, where: (p) => p.id.equals(productId));
    return deletedRows > 0;
  }
}
