import 'package:flutter/material.dart';

import '../../../../core/utils/date_format.dart';
import '../../data/models/models.dart';
import '../widgets/widgets.dart';

class PosTabletPage extends StatelessWidget {
  const PosTabletPage({Key? key, required this.pos}) : super(key: key);
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
          ElevatedButton(
            onPressed: () {},
            child: const Text('Nouvelle Session'),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Derniere date De Cloture'),
              Text(dateString)
            ],
          ),
          const SizedBox(height: 20,),
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
