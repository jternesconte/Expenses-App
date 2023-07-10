import 'package:flutter/material.dart';
import './transaction_form.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
    final _transactions = [
    Transaction(
      id: "t1",
      title: "New Run Shoes",
      value: 349.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "New Pc Ram Memory",
      value: 179.7,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
        TransactionForm(),
      ],
    );
  }
}