mixin FormsValidateMixin {
  String? notIsEmptyAndNull(String? value, {String? errorMessage}) {
    if (value != null && value.isNotEmpty) {
      return null;
    } else {
      return errorMessage ?? "Este Campo não pode estar vazio";
    }
  }

  String? passwordIsLongerThanSevenCharacters(
    String? password, {
    String? errorMessage,
  }) {
    if (password != null && password.length > 7) {
      return null;
    } else {
      return errorMessage ?? "Este Senha é muito curta";
    }
  }

  String? isEmailValid(
    String? email, {
    String? errorMessage,
  }) {
    if (email != null && email.isNotEmpty) {
      final RegExp regex = RegExp(
        r"^(([^<>()[\]\\.,;:\s@\']+(\.[^<>()[\]\\.,;:\s@\']+)*)|(\'.+\'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$",
      );
      return regex.hasMatch(email) ? null : errorMessage ?? "email incorreto";
    } else {
      return errorMessage ?? "Este Campo não pode estar vazio";
    }
  }

  String? isPhoneNumberValid(
    String? phone, {
    String? errorMessage,
  }) {
    if (phone != null && phone.isNotEmpty) {
      final RegExp regex = RegExp(
        r'^1\d\d(\d\d)?$|^0800 ?\d{3} ?\d{4}$|^(\(0?([1-9a-zA-Z][0-9a-zA-Z])?[1-9]\d\) ?|0?([1-9a-zA-Z][0-9a-zA-Z])?[1-9]\d[ .-]?)?(9|9[ .-])?[2-9]\d{3}[ .-]?\d{4}$',
      );
      return regex.hasMatch(phone)
          ? null
          : errorMessage ?? "numero de telefone incorreto";
    } else {
      return errorMessage ?? "Este Campo não pode estar vazio";
    }
  }

  String? nameValid(String? name) {
    String? response;
    if (name == null || name.isEmpty) {
      response = 'O Campo não pode estar vazio';
    } else if (name.trim().split(' ').length <= 1) {
      response = 'Digite um nome valido, com nome e sobrenome';
    } else {}
    return response;
  }
}