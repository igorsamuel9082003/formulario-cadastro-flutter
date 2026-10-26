import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formulario_cadastro_flutter/app.dart';

void main() {
  testWidgets('exibe todos os campos e o botão de cadastro', (tester) async {
    await tester.pumpWidget(const CadastroApp());

    expect(find.text('Nome completo'), findsOneWidget);
    expect(find.text('E-mail'), findsOneWidget);
    expect(find.text('CPF'), findsOneWidget);
    expect(find.text('Telefone'), findsOneWidget);
    expect(find.text('Senha'), findsOneWidget);
    expect(find.text('Confirmar senha'), findsOneWidget);
    expect(find.text('CADASTRAR'), findsOneWidget);
  });

  testWidgets('mostra erros quando o formulário está vazio', (tester) async {
    await tester.pumpWidget(const CadastroApp());

    await tester.tap(find.text('CADASTRAR'));
    await tester.pump();

    expect(find.text('Informe o nome completo.'), findsOneWidget);
    expect(find.text('Informe o e-mail.'), findsOneWidget);
    expect(find.text('Revise os campos destacados.'), findsOneWidget);
  });

  testWidgets('realiza cadastro quando os dados são válidos', (tester) async {
    await tester.pumpWidget(const CadastroApp());

    final campos = find.byType(TextFormField);
    await tester.enterText(campos.at(0), 'Igor Samuel Cândido de Souza');
    await tester.enterText(campos.at(1), 'igor@email.com');
    await tester.enterText(campos.at(2), '12345678901');
    await tester.enterText(campos.at(3), '62999999999');
    await tester.enterText(campos.at(4), '123456');
    await tester.enterText(campos.at(5), '123456');

    await tester.ensureVisible(find.text('CADASTRAR'));
    await tester.tap(find.text('CADASTRAR'));
    await tester.pump();

    expect(find.text('Cadastro realizado com sucesso!'), findsOneWidget);
  });
}
