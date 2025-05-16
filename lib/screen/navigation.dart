import 'package:flutter/material.dart';
import 'package:master/screen/navigation/kirim_data.dart';
import 'package:master/screen/navigation/kirim_terima_data.dart';
import 'package:master/screen/navigation/terima_data.dart';

class Navigation extends StatelessWidget {
  Navigation({super.key});

  final outputHasil = TextEditingController();
  final inputNilai1 = TextEditingController();
  final hasilContoller = TextEditingController();

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
              onPressed: () async {
                final hasil = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TerimaData(),
                  ),
                );
                if (hasil != null) {
                  outputHasil.text = hasil;
                }
              },
              child: const Text('Terima Data'),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: outputHasil,
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
                controller: inputNilai1,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input Nilai 1',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final respon = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KirimTerimaData(nilai1: int.tryParse(inputNilai1.text) ?? 0),
                  ),
                );
                if (respon != null) {
                  // Data tersedia
                  hasilContoller.text = respon;
                }
              },
              child: const Text('Kirim & Terima Data'),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: hasilContoller,
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
