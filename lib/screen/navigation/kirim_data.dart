import 'package:flutter/material.dart';

class KirimData extends StatelessWidget {
  final String data;
  const KirimData({ super.key, required this.data });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kirim Data')),
      body:      Center(
        child: Text('$data Hello AzlansajaTV'),
      ),
    );
  }
}
