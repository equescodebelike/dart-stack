import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class CategoryEndpoint extends Endpoint {
  // Создание категории
  Future<int> createCategory(Session session, Category category) async {
    await Category.insert(session, category);
    return category.id!;
  }

  // Чтение всех категорий
  Future<List<Category>> getAllCategories(Session session) async {
    return await Category.find(session);
  }

  // Обновление категории
  Future<bool> updateCategory(Session session, Category category) async {
    var existingCategory = await Category.findById(session, category.id!);
    if (existingCategory == null) return false;

    await Category.update(session, category);
    return true;
  }

  // Удаление категории
  Future<bool> deleteCategory(Session session, int categoryId) async {
    var deletedRows = await Category.delete(session, where: (c) => c.id.equals(categoryId));
    return deletedRows > 0;
  }
}
