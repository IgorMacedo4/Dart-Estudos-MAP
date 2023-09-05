// Define a classe ContatoManager para gerenciar operações relacionadas a contatos.
class ContatoManager {
  // Declara um mapa privado para armazenar contatos. O sublinhado torna-o privado.
  Map<String, String> _contatos = {};

  // Método para adicionar um contato ao mapa.
  void adicionaContato(String? nome, String? numero) {
    // Verifica se o nome e o número fornecidos não são nulos.
    if (nome != null && numero != null) {
      _contatos[nome] = numero; // Adiciona o contato ao mapa.
      print('Contato adicionado');
    } else {
      print('Erro, campos vazios!');
    }
  }

  // Método para exibir todos os contatos armazenados.
  void lerContatos() {
    print("Listas de Contatos:");
    _contatos.forEach((nome, numero) {
      // Itera sobre o mapa e imprime cada contato.
      print('Nome $nome - Numero $numero');
    });
  }

  // Método para atualizar um contato existente.
  void atualizarContatos(String? nome, String? novoNumero) {
    // Verifica se o contato com o nome fornecido existe no mapa.
    if (_contatos.containsKey(nome)) {
      // Atualiza o número do contato se o nome e o novo número não forem nulos.
      if (nome != null && novoNumero != null) {
        _contatos[nome] = novoNumero;
        print('Contato Atualizado');
      }
    } else {
      print('Contato não existe');
    }
  }

  // Método para deletar um contato.
  void deletaContato(String? nome) {
    // Verifica se o contato com o nome fornecido existe no mapa e, em caso afirmativo, remove-o.
    if (_contatos.containsKey(nome)) {
      _contatos.remove(nome);
      print('Contato removido');
    } else {
      print('Contato não existe!');
    }
  }
}
