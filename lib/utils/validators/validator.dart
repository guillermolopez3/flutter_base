import 'package:equatable/equatable.dart';

abstract class Validator<T extends Validator<T>> extends Equatable{
  final String? validationMessage;
  const Validator(this.validationMessage);

  bool get isValid => validate().validationMessage == null;

  T validate();
  T copyWith({String? validationMessage});
}