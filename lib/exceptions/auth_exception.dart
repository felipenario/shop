class AuthException implements Exception {
  static const Map<String, String> errors = {
    "EMAIL_EXISTS": "O endereço de email já está sendo usado por outra conta",
    "OPERATION_NOT_ALLOWED":
        "A entrada de senha está desativada para este projeto.",
    "TOO_MANY_ATTEMPTS_TRY_LATER":
        "Bloqueamos todos os pedidos deste dispositivo devido a atividades incomuns. Tente mais tarde.",
    "EMAIL_NOT_FOUND":
        "Não há registro de usuário correspondente a este identificador. O usuário pode ter sido excluído.",
    "INVALID_PASSWORD": "A senha é inválida ou o usuário não possui uma senha.",
    "USER_DISABLED": "A conta do usuário foi desativada por um administrador.",
  };

  final String key;

  const AuthException(this.key);

  @override
  String toString() {
    if (errors.containsKey(key)) {
      return errors[key];
    } else {
      return "Ocorreu um erro na autenticação!";
    }
  }
}
