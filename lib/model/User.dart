import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.email,
  });

  final int id;
  final String email;

  User copyWith({int? id, String? email,}) => User(id: id ?? this.id, email: email ?? this.email);

  //TODO: modificar segun sea necesario
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      email: json['email'] as String
    );
  }
  @override
  List<Object> get props => [id, email];
}