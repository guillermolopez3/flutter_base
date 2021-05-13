import '../../constants/strings.dart';
import '../../utils/validators/validator.dart';
import '../extensions/string_extension.dart';

class Password extends Validator<Password>{
  final String value;
  const Password({this.value = '', String? validationMessage}) : super(validationMessage);

  @override
  Password validate() {
    if(value.isEmpty) return copyWith(validationMessage: Strings.emptyField);
    if(!value.isValidPasswordFormat)
      return copyWith(validationMessage: Strings.invalidPasswordFormat);

    return this;
  }

  Password validateRepeated(Password password){
    final passwordValidated = validate();
    if(!passwordValidated.isValid) return passwordValidated;
    if(passwordValidated.value != password.value)
      return copyWith(validationMessage: Strings.passDoesntMatch);

    return this;
  }

  @override
  Password copyWith({String? value, String? validationMessage})
    => Password(value: value ?? this.value, validationMessage: validationMessage);

  @override
  List<Object?> get props => [value, validationMessage];


}