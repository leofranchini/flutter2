import 'package:flutter_test/flutter_test.dart';
import 'banco.dart';
import 'conta_bancaria.dart';

void main() {
  group('Banco', () {
    late Banco<double> banco;
    late ContaBancaria<double> conta;

    setUp(() {
      banco = Banco<double>();
      conta = ContaBancaria<double>('1234', 'João', 1000.0);
      banco.adicionarConta(conta);
    });

    test('deve adicionar uma conta ao banco', () {
      expect(banco.contas.length, 1);
      expect(banco.contas.first.titular, 'João');
    });

    test('deve buscar uma conta pelo número', () {
      final encontrada = banco.buscarConta('1234');
      expect(encontrada, isNotNull);
      expect(encontrada?.titular, 'João');
    });

    test('deve depositar valores na conta', () {
      conta.depositar(500.0);
      expect(conta.saldo, 1500.0);
    });

    test('deve sacar valores da conta', () {
      conta.sacar(300.0);
      expect(conta.saldo, 700.0);
    });

    test('não deve permitir sacar valores negativos', () {
      expect(() => conta.sacar(1500.0), throwsException);
    });
  });
}