import 'package:flutter/material.dart';
import 'package:master/screen/navigation/kirim_data.dart';
import 'package:master/screen/navigation/kirim_terima_data.dart';
import 'package:master/screen/navigation/terima_data.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layer Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KirimData(data: 'K0001'),
                  ),
                );
              },
              child: const Text('Kirim Data'),
            ),
            const Divider(thickness: 5),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TerimaData(),
                  ),
                );
              },
              child: const Text('Terima Data'),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                textAlign: TextAlign.center,
                readOnly: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Divider(thickness: 5),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input Nilai 1',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KirimTerimaData(),
                  ),
                );
              },
              child: const Text('Kirim & Terima Data'),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                textAlign: TextAlign.center,
                readOnly: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
