import 'conta_bancaria.dart';

class Banco<T> {
  List<ContaBancaria<T>> contas = [];

  void adicionarConta(ContaBancaria<T> conta) {
    contas.add(conta);
  }

  ContaBancaria<T>? buscarConta(String numero) {
    return contas.firstWhere((conta) => conta.numero == numero, orElse: () => null);
  }
}