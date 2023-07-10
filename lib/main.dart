import 'package:flutter/material.dart';
import 'components/transaction_user.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Expenses"),
        backgroundColor: Colors.green,
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              child: Card(
                color: Colors.green,
                elevation: 5,
                child: Text("Graphic"),
              ),
            ),
            TransactionUser(),
          ],
        ),
      ),
    );
  }
}
        