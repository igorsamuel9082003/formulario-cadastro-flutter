import 'package:flutter_test/flutter_test.dart';
import 'package:formulario_cadastro_flutter/validators/cadastro_validators.dart';

void main() {
  group('CadastroValidators', () {
    test('aceita e-mail válido e rejeita e-mail inválido', () {
      expect(CadastroValidators.email('igor@email.com'), isNull);
      expect(
        CadastroValidators.email('igor.email.com'),
        'Digite um e-mail válido.',
      );
    });

    test('CPF precisa ter 11 números', () {
      expect(CadastroValidators.cpf('12345678901'), isNull);
      expect(
        CadastroValidators.cpf('123'),
        'O CPF deve conter 11 números.',
      );
    });

    test('telefone aceita 10 ou 11 números', () {
      expect(CadastroValidators.telefone('6233334444'), isNull);
      expect(CadastroValidators.telefone('62999998888'), isNull);
      expect(
        CadastroValidators.telefone('62999'),
        'O telefone deve conter 10 ou 11 números.',
      );
    });

    test('senha precisa ter no mínimo 6 caracteres', () {
      expect(CadastroValidators.senha('123456'), isNull);
      expect(
        CadastroValidators.senha('123'),
        'A senha deve ter no mínimo 6 caracteres.',
      );
    });

    test('confirmação precisa ser igual à senha', () {
      expect(
        CadastroValidators.confirmacaoSenha('123456', '123456'),
        isNull,
      );
      expect(
        CadastroValidators.confirmacaoSenha('654321', '123456'),
        'As senhas não são iguais.',
      );
    });
  });
}
