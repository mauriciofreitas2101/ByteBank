import 'package:flutter/material.dart';

void main() => runApp(Bytebankapp());

class Bytebankapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Criando Transferencia'),),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Numero da conta',
              hintText: '0000'
            ),
          ),
          TextField(),
          ElevatedButton()
        ],
      )
    );
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Transferencias'),
        ),
        body: Column(
          children: <Widget>[
            ItemTransferencia(Transferencia(100.0, 1000)),
            ItemTransferencia(Transferencia(200.0, 2000)),
            ItemTransferencia(Transferencia(300.0, 3000)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ));
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(_transferencia.valor.toString()),
      subtitle: Text(_transferencia.numeroConta.toString()),
    ));
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
