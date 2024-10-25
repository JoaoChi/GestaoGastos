import 'package:flutter/material.dart';
import 'package:gestao/components/transaction_form.dart';
import 'package:gestao/components/transaction_list.dart';
import 'package:gestao/models/transaction.dart';

main() => runApp(ExpenseApp());

class ExpenseApp extends StatelessWidget {
  const ExpenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tenis',
      value: 310.70,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Despesas '),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Text('Grafico'),
                elevation: 5,
              ),
            ),
            // TransactionList(_transactions),
            // TransactionForm(),
          ],
        ));
  }
}
