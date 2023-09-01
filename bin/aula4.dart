import 'dart:io';

void main() {
  Map<String, String> contatos = {};

  while (true) {
    print("Menu");
    print("Escolha um opção:");
    print("1 - Criar Contato");
    print("2 - Visualizar Contato");
    print("3 - Atualizar Contato");
    print("4 - Deletar Contato");
    print("5 - Sair");

    var opcao = stdin.readLineSync();
    switch (opcao) {
      case '1':
        criarContato(contatos);
        break;
      case '2':
        lerContato(contatos);
        break;
      case '3':
        atualizarContato(contatos);
        break;
      case '4':
        deletarContato(contatos);
        break;
      case '5':
        print("Saindo do programa.");
        return;
      default:
        print("Escolha uma opção válida!");
    }
  }
}

void criarContato(Map<String, String> contatos) {
  print("Digite o nome do contato:");
  String nome = stdin.readLineSync()!;
  print("Digite o numero do telefone:");
  String numero = stdin.readLineSync()!;
  contatos[nome] = numero;
  print("Contato criado com sucesso!");
}

void lerContato(Map<String, String> contatos) {
  print("Digite o nome do contato que deseja ler:");
  String nome = stdin.readLineSync()!;
  if (contatos.containsKey(nome)) {
    print("Nome: $nome, Telefone: ${contatos[nome]}");
  } else {
    print("Contato não encontrado.");
  }
}

void atualizarContato(Map<String, String> contatos) {
  print("Digite o nome do contato que deseja atualizar:");
  String nome = stdin.readLineSync()!;
  if (contatos.containsKey(nome)) {
    print("Digite o novo número de telefone:");
    String novoNumero = stdin.readLineSync()!;
    contatos[nome] = novoNumero;
    print("Contato atualizado com sucesso!");
  } else {
    print("Contato não encontrado.");
  }
}

void deletarContato(Map<String, String> contatos) {
  print("Digite o nome do contato que deseja deletar:");
  String nome = stdin.readLineSync()!;
  if (contatos.containsKey(nome)) {
    contatos.remove(nome);
    print("Contato deletado com sucesso!");
  } else {
    print("Contato não encontrado.");
  }
}
