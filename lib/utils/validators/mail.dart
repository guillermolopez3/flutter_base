import '../../constants/strings.dart';
import '../../utils/validators/validator.dart';
import '../extensions/string_extension.dart';

class Email extends Validator<Email>{
  final String value;
  const Email({String? value, String? validationMessage})
        : this.value = value ?? '', super(validationMessage);

  @override
  Email validate() {
    if(value.isEmpty) return copyWith(validationMessage: Strings.emptyField);
    if(!value.isValidEmailFormat) return copyWith(validationMessage: Strings.invalidEmailFormat);
    return this;
  }

  @override
  Email copyWith({String? value, String? validationMessage})
      => Email(value: value ?? this.value, validationMessage: validationMessage);

  @override
  List<Object?> get props => [value,validationMessage];


}