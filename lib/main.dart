import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
      home: Scaffold(
        body: ListaTransferencias(),
        appBar: AppBar(
          title: Text('Transferencias'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    ));

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('100.0'),
              subtitle: Text('1000'),
            )
        ),
        ItemTransferencia('100', '1000'),
        ItemTransferencia(),
        ItemTransferencia(),
        ItemTransferencia(),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {

    final string valor;
    final string numeroconta;

    ItemTransferencia(this.valor, this.numeroconta);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(valor),
          subtitle: Text(numeroconta),
        )
    );
  }

}