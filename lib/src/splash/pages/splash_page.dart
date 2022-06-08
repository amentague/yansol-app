import 'package:flutter/material.dart';
import 'package:yansol/src/core/widgets/copy_rights.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  static const routeName = '/splash';
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/background_purple.jpeg'))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 300,
            child: Image.asset('assets/images/logo.png'),
          ),
          const CircularProgressIndicator(),
          const CopyRights()
        ],
      ),
    ));
  }
}
