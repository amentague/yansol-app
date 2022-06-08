import 'package:flutter/material.dart';

import '../../../../core/utils/date_format.dart';
import '../../data/models/models.dart';

class PosDesktopPage extends StatelessWidget {
  const PosDesktopPage({Key? key, required this.pos}) : super(key: key);
  final Pos pos;
  @override
  Widget build(BuildContext context) {
    final dateString = dateFormat(pos.lastSessionClosingDate!);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loja'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.purple)),
                child: ListTile(
                  leading: const Icon(
                    Icons.receipt,
                  ),
                  title: const Text('Commandes'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.purple)),
                child: ListTile(
                  leading: const Icon(
                    Icons.paid,
                  ),
                  title: const Text('Payments'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.purple)),
                child: ListTile(
                  leading: const Icon(
                    Icons.checkroom,
                  ),
                  title: const Text('Articles'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Nouvelle Session'),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Derniere date De Cloture'),
              Text(dateString)
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Dernier solde'),
              Text(pos.lastSessionClosingCash.toString())
            ],
          ),
        ],
      ),
    );
  }
}
