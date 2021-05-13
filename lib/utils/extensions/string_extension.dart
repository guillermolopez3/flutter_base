extension StringExtensions on String{
  ///valida que el email ingresado tengo un formato válido
  bool get isValidEmailFormat => RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  ).hasMatch(this);

  /// Valida que la contraseña ingresada sea de formato válido, y no contenga caracteres
  /// no soportados
  /// [A-Za-z0-9] [- * ? ! @ # $ / () {} = . , ; :]
  bool get isValidPasswordFormat => RegExp(r'^[a-zA-Z0-9-*?!@#$/(){}=.,;:]+$').hasMatch(this);

  /// Valida que el string no contenga numeros
  bool get isOnlyLetters => RegExp(r'^[a-zA-ZÁÉÍÓÚáéíóúñÑ ]+$').hasMatch(this);
}