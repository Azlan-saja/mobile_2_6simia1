import 'package:flutter/material.dart';
import 'package:master/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class StateManajemen extends StatefulWidget {
  const StateManajemen({super.key});

  @override
  State<StateManajemen> createState() => _StateManajemenState();
}

class _StateManajemenState extends State<StateManajemen> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Layer State Manajemen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('State Local: SetState()'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      nilai = nilai - 1;
                      print(nilai);
                      setState(() {});
                    },
                    child: const Icon(Icons.exposure_minus_1, size: 24)),
                Text("$nilai", style: const TextStyle(fontSize: 24)),
                ElevatedButton(
                    onPressed: () {
                      nilai = nilai + 1;
                      setState(() {});
                    },
                    child: const Icon(Icons.plus_one, size: 24)),
              ],
            ),
            const SizedBox(height: 40),
            const Text('State Global: Package Provider'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      provider.kuranngin();
                    },
                    child: const Icon(Icons.exposure_minus_1, size: 24)),
                Text("${provider.hasil}", style: const TextStyle(fontSize: 24)),
                ElevatedButton(
                    onPressed: () {
                      provider.tambahin();
                    },
                    child: const Icon(Icons.plus_one, size: 24)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
