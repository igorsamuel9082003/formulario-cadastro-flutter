# Formulário de Cadastro de Usuário em Flutter

Atividade prática desenvolvida para aplicar os conceitos de formulários,
validação de dados e feedback visual no Flutter.

## Identificação

- **Aluno:** Igor Samuel Cândido de Souza
- **RA:** 2310951

## Funcionalidades

- Cadastro de nome completo, e-mail, CPF, telefone e senha.
- Validação individual de todos os campos.
- CPF e telefone aceitam apenas números.
- Validação de e-mail com expressão regular (`RegExp`).
- Senha com no mínimo seis caracteres.
- Campo de confirmação de senha.
- Botões para mostrar ou ocultar as senhas.
- Mensagens de erro abaixo dos campos inválidos.
- `SnackBar` verde para cadastro válido e vermelho para dados inválidos.
- Layout responsivo com `SingleChildScrollView` para evitar overflow.
- Testes de widgets para os principais comportamentos.

## Tecnologias utilizadas

- Flutter
- Dart
- Material Design 3

## Estrutura principal

```text
Scaffold
└── Form
    └── SingleChildScrollView
        └── Column
            ├── TextFormField (nome)
            ├── TextFormField (e-mail)
            ├── TextFormField (CPF)
            ├── TextFormField (telefone)
            ├── TextFormField (senha)
            ├── TextFormField (confirmação de senha)
            └── ElevatedButton (CADASTRAR)
```

## Organização do código

```text
lib/
├── app.dart                         # Tema e configuração do MaterialApp
├── main.dart                        # Ponto de entrada da aplicação
├── pages/
│   └── cadastro_page.dart           # Tela e comportamento do formulário
├── validators/
│   └── cadastro_validators.dart     # Regras de validação
└── widgets/
    └── cabecalho_formulario.dart    # Cabeçalho reutilizável da tela

test/
├── cadastro_validators_test.dart    # Testes das regras de validação
└── widget_test.dart                 # Testes da interface
```

## Como executar

1. Instale o [Flutter](https://docs.flutter.dev/get-started/install).
2. Clone este repositório.
3. Entre na pasta do projeto.
4. Caso as pastas das plataformas ainda não existam, execute:

   ```bash
   flutter create .
   ```

5. Instale as dependências e execute o aplicativo:

   ```bash
   flutter pub get
   flutter run
   ```

## Testes

```bash
flutter test
```

## Print para envio no AVA

Após executar e testar o aplicativo, pressione **CADASTRAR** com dados válidos e
salve um print do `SnackBar` de sucesso na pasta `screenshots/` com o nome
`resultado-final.png`.

## Observação

O formulário apenas demonstra a captura e a validação dos dados. Nenhuma
informação pessoal ou senha é armazenada.
