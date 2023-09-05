// Importa as bibliotecas necessárias.
import 'dart:io';
import 'contato_manager.dart';

void main() {
  // Cria uma instância da classe ContatoManager.
  var manager = ContatoManager();

  // Loop principal para interagir com o usuário.
  while (true) {
    print('Menu:');
    print('1-C 2-R 3-U 4-D 5-Sair');
    var opcao = stdin.readLineSync();

    // Executa uma ação com base na opção escolhida pelo usuário.
    switch (opcao) {
      case '1':
        print("Digite o nome do contato: ");
        String? nome = stdin.readLineSync();
        print("Digite o numero: ");
        String? numero = stdin.readLineSync();
        manager.adicionaContato(nome, numero);
        break;
      case '2':
        manager.lerContatos();
        break;
      case '3':
        print('Digite o nome do contato que deseja atualizar');
        String? nome = stdin.readLineSync();
        print('Digite o novo Numero:');
        String? novoNumero = stdin.readLineSync();
        manager.atualizarContatos(nome, novoNumero);
        break;
      case '4':
        print('Digite o nome do contato que deseja deletar');
        String? nome = stdin.readLineSync();
        manager.deletaContato(nome);
        break;
      case '5':
        print('Saindo...');
        return;
      default:
        print('Opção inválida.');
    }
  }
}
