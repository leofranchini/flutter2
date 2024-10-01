import 'banco.dart';
import 'conta_bancaria.dart';

void main() {
  Banco<double> banco = Banco<double>();


  ContaBancaria<double> contaJoao = ContaBancaria<double>('1234', 'João', 1000.0);

  banco.adicionarConta(contaJoao);

  print(contaJoao);

  ContaBancaria<double>? contaEncontrada = banco.buscarConta('1234');
  if (contaEncontrada != null) {
    print('Conta encontrada: ${contaEncontrada}');
  } else {
    print('Conta não encontrada.');
  }
}