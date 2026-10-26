class CadastroValidators {
  const CadastroValidators._();

  static String? obrigatorio(String? valor, String nomeCampo) {
    if (valor == null || valor.trim().isEmpty) {
      return 'Informe $nomeCampo.';
    }
    return null;
  }

  static String? email(String? valor) {
    final obrigatorio = CadastroValidators.obrigatorio(valor, 'o e-mail');
    if (obrigatorio != null) return obrigatorio;

    final emailValido = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    if (!emailValido.hasMatch(valor!.trim())) {
      return 'Digite um e-mail válido.';
    }
    return null;
  }

  static String? cpf(String? valor) {
    final obrigatorio = CadastroValidators.obrigatorio(valor, 'o CPF');
    if (obrigatorio != null) return obrigatorio;
    if (valor!.length != 11) return 'O CPF deve conter 11 números.';
    return null;
  }

  static String? telefone(String? valor) {
    final obrigatorio = CadastroValidators.obrigatorio(valor, 'o telefone');
    if (obrigatorio != null) return obrigatorio;
    if (valor!.length < 10 || valor.length > 11) {
      return 'O telefone deve conter 10 ou 11 números.';
    }
    return null;
  }

  static String? senha(String? valor) {
    final obrigatorio = CadastroValidators.obrigatorio(valor, 'a senha');
    if (obrigatorio != null) return obrigatorio;
    if (valor!.length < 6) return 'A senha deve ter no mínimo 6 caracteres.';
    return null;
  }

  static String? confirmacaoSenha(String? valor, String senha) {
    final obrigatorio = CadastroValidators.obrigatorio(
      valor,
      'a confirmação da senha',
    );
    if (obrigatorio != null) return obrigatorio;
    if (valor != senha) return 'As senhas não são iguais.';
    return null;
  }
}
