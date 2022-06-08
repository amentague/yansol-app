import 'package:flutter/material.dart';
import 'package:yansol/src/core/utils/date_format.dart';
import 'package:yansol/src/features/pos/presentation/widgets/widgets.dart';

import '../../data/models/models.dart';

class PosMobilePage extends StatelessWidget {
  const PosMobilePage({Key? key, required this.pos}) : super(key: key);

  final Pos pos;

  @override
  Widget build(BuildContext context) {
    final dateString = dateFormat(pos.lastSessionClosingDate!);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loja'),
        centerTitle: true,
      ),
      drawer: const PosDrawer(),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Nouvelle Session'),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Derniere date De Cloture'),
              Text(dateString)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Dernier solde'),
              Text(pos.lastSessionClosingCash.toString())
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Current  Session'),
              Text(pos.currentSessionId?[1] ?? ''.toString())
            ],
          ),
        ],
      ),
    );
  }
}
