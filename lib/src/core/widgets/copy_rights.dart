import 'package:flutter/material.dart';


class CopyRights extends StatelessWidget {
  const CopyRights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Powered by',
            style: Theme.of(context).textTheme.subtitle2),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('LiaTech',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Theme.of(context).secondaryHeaderColor,
                  )),
        ),
        Icon(
          Icons.copyright,
          size: 15,
          color: Colors.grey[100],
        ),
        Text('2021', style: Theme.of(context).textTheme.subtitle2)
      ],
    );
  }
}
