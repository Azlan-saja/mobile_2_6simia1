import 'package:flutter/material.dart';

class KirimTerimaData extends StatelessWidget {
  final int nilai1;
  KirimTerimaData({super.key, required this.nilai1});

  final inputNilai2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kirim & Terima Data')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                initialValue: "$nilai1",
                textAlign: TextAlign.center,
                readOnly: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ' Nilai 1',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: inputNilai2Controller,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input Nilai 2',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                int nilai2 = int.tryParse(inputNilai2Controller.text) ?? 0;
                int hasil = nilai1 + nilai2;
                String kirimRespon = "$nilai1 + $nilai2 = $hasil";
                Navigator.pop(context, kirimRespon);
              },
              child: const Text('Hitung & Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
