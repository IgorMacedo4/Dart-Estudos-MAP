// Importa a biblioteca 'dart:io'
import 'dart:io';

/*
C - Criar um contato
R - Ler todos os contatos
U - Atualizar um contato
D - Deletar um contato
Sair - Sair do programa*/

void main() {
  // Cria um mapa vazio chamado 'contatos' onde a chave e o valor são strings.
  Map<String, String> contatos = {};

  // Inicia um loop infinito para mostrar o menu repetidamente até que o usuário decida sair.
  while (true) {
    // Imprime o menu de opções para o usuário.
    print('Menu:');
    print('1-C 2-R 3-U 4-D 5-Sair');

    // Lê a opção escolhida
    var opcao = stdin.readLineSync();

    // Usa uma estrutura switch-case para determinar a ação com base na opção escolhida.
    switch (opcao) {
      // Caso o usuário escolha a opção 1 (Criar um contato).
      case '1':
        print('Digite o nome do contato:');
        // Lê o nome do contato do teclado.
        String? nome = stdin.readLineSync();

        print('Digite o número do contato:');
        // Lê o número do contato do teclado.
        String? numero = stdin.readLineSync();

        // Verifica se o nome e o número não são nulos antes de adicionar ao mapa.
        if (nome != null && numero != null) {
          contatos[nome] = numero;
          print('Contato adicionado!');
        }
        break;

      // Caso o usuário escolha a opção 2 (Ler todos os contatos).
      case '2':
        print('Contatos:');
        // Itera sobre o mapa e imprime cada contato.
        contatos.forEach((nome, numero) {
          print('Nome: $nome, Número: $numero');
        });
        break;

      // Caso o usuário escolha a opção 3 (Atualizar um contato).
      case '3':
        print('Digite o nome do contato que deseja atualizar:');
        // Lê o nome do contato que o usuário deseja atualizar.
        String? nome = stdin.readLineSync();

        // Verifica se o contato existe no mapa.
        if (contatos.containsKey(nome)) {
          print('Digite o novo número:');
          // Lê o novo número do contato.
          String? novoNumero = stdin.readLineSync();

          // Verifica se o nome e o novo número não são nulos antes de atualizar o mapa.
          if (nome != null && novoNumero != null) {
            contatos[nome] = novoNumero;
            print('Contato atualizado com sucesso!');
          }
        } else {
          print('Contato não encontrado.');
        }
        break;

      // Caso o usuário escolha a opção 4 (Deletar um contato).
      case '4':
        print('Digite o nome do contato que deseja deletar:');
        // Lê o nome do contato que o usuário deseja deletar.
        String? nome = stdin.readLineSync();

        // Verifica se o contato existe no mapa e, em caso afirmativo, remove-o.
        if (contatos.containsKey(nome)) {
          contatos.remove(nome);
          print('Contato removido com sucesso!');
        } else {
          print('Contato não encontrado.');
        }
        break;

      // Opção 5 (Sair do programa).
      case '5':
        print('Saindo...');
        return;

      // Caso o usuário digite uma opção que não esteja no menu.
      default:
        print('Opção inválida.');
    }
  }
}
