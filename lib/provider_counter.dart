import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'counter_view_model.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Learn Provider"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You pushed FAB"),
            Text(
              "${context.watch<ViewModel>().count}",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
              onPressed: () => context.read<ViewModel>().decrement(),
              icon: const Text("-"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ViewModel>().increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
