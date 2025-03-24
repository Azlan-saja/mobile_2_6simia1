import 'package:flutter/material.dart';

class KirimTerimaData extends StatelessWidget {
  const KirimTerimaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kirim & Terima Data')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Hitung & Kembali'),
        ),
      ),
    );
  }
}
