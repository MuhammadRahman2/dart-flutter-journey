import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Provider Counter")),
      body: Center(
        child: Column(
          children: [
            Text(
              "${counterProvider.count}",
              style: const TextStyle(fontSize: 40),
            ),
            Text(
              'Counter is ${counterProvider.count % 2 == 0 ? "Even" : "odd"}',
            ),
            SizedBox(height: 20),
            IconButton(
              onPressed: () => counterProvider.reset(),
              icon: Icon(Icons.restore),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterProvider.increment();
            },
            child: const Icon(Icons.add),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () => counterProvider.decreament(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
