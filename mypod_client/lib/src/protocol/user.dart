/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class User extends _i1.SerializableEntity {
  User._({
    this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.imageUrl,
  });

  factory User({
    int? id,
    required String name,
    required String email,
    required String password,
    required String phone,
    required String imageUrl,
  }) = _UserImpl;

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      email:
          serializationManager.deserialize<String>(jsonSerialization['email']),
      password: serializationManager
          .deserialize<String>(jsonSerialization['password']),
      phone:
          serializationManager.deserialize<String>(jsonSerialization['phone']),
      imageUrl: serializationManager
          .deserialize<String>(jsonSerialization['imageUrl']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String email;

  String password;

  String phone;

  String imageUrl;

  User copyWith({
    int? id,
    String? name,
    String? email,
    String? password,
    String? phone,
    String? imageUrl,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'imageUrl': imageUrl,
    };
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required String name,
    required String email,
    required String password,
    required String phone,
    required String imageUrl,
  }) : super._(
          id: id,
          name: name,
          email: email,
          password: password,
          phone: phone,
          imageUrl: imageUrl,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    String? name,
    String? email,
    String? password,
    String? phone,
    String? imageUrl,
  }) {
    return User(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}
