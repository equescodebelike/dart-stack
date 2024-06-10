import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class UserEndpoint extends Endpoint {
  // Создание пользователя
  Future<int> createUser(Session session, User user) async {
    await User.insert(session, user);
    return user.id!;
  }

  // Чтение всех пользователей
  Future<List<User>> getAllUsers(Session session) async {
    return await User.find(session);
  }

  // Обновление пользователя
  Future<bool> updateUser(Session session, User user) async {
    var existingUser = await User.findById(session, user.id!);
    if (existingUser == null) return false;

    await User.update(session, user);
    return true;
  }

  // Удаление пользователя
  Future<bool> deleteUser(Session session, int userId) async {
    var deletedRows = await User.delete(session, where: (u) => u.id.equals(userId));
    return deletedRows > 0;
  }
  
}
