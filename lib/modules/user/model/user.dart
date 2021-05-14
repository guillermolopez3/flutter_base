import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.email,
  });

  final int id;
  final String email;

  User copyWith({
    int? id,
    String? email,
  }) =>
      User(
        id: id ?? this.id,
        email: email ?? this.email,
      );


  @override
  List<Object> get props => [id];
}
