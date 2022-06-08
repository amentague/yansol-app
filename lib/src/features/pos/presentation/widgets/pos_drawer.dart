import 'package:flutter/material.dart';

class PosDrawer extends StatelessWidget {
  const PosDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: SizedBox(
              height: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.receipt,
            ),
            title: const Text('Commandes'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.paid,
            ),
            title: const Text('Payments'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.checkroom,
            ),
            title: const Text('Articles'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
