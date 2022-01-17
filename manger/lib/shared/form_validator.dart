import 'package:form_field_validator/form_field_validator.dart';

class FormValidator {
  static final required = RequiredValidator(errorText: 'هذا الحقل مطلوب');
  static final password = MultiValidator([
    required,
    MinLengthValidator(6, errorText: 'يجب ادخال 6 احرف او رموز على الاقل'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'يجب ادخال رمز واحد على الاقل')
  ]);
}
