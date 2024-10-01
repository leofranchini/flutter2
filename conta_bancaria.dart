class ContaBancaria<T> {
  String numero;
  String titular;
  T saldo;

  ContaBancaria(this.numero, this.titular, this.saldo);

  void depositar(T valor) {
    saldo = _soma(saldo, valor);
  }

  void sacar(T valor) {
    saldo = _subtrai(saldo, valor);
  }

  T _soma(T a, T b) {
    if (a is double && b is double) {
      return (a + b) as T;
    }
    throw Exception('Operação não suportada para este tipo');
  }

  T _subtrai(T a, T b) {
    if (a is double && b is double) {
      return (a - b) as T;
    }
    throw Exception('Operação não suportada para este tipo');
  }

  @override
  String toString() {
    return 'Conta: $numero, Titular: $titular, Saldo: $saldo';
  }
}