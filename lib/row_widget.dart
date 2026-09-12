import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Widget'),
      ),
      body: Row(
        children: const [
          Text('Jurusan Ilmu Komputer '),
          Text('FMIPA '),
          Text('Universitas Lampung '),
          Text('2026'),
        ],
      ),
    );
  }
}