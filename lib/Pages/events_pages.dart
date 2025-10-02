import 'package:flutter/material.dart';

class EvenimentePage extends StatelessWidget {
  EvenimentePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Evenimente')),
      body: const Center(child: Text('Pagina de evenimente')),
    );
  }
}
