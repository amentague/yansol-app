import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/login/login.dart';
import '../utils/constants.dart';
import 'text_field_container.dart';

class RoundedInputField extends StatelessWidget {

  const RoundedInputField({
    Key? key,
    this.hintText,
    this.icon = Icons.person,
  }) : super(key: key);

  final String? hintText;
  final IconData icon;
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) => previous.username != current.username,
        builder: (context, state) {
          return TextFieldContainer(
            child: TextField(
              onChanged: (username) =>print(username),
              style: const TextStyle(
                  color: kPrimaryTextColor, fontSize: 30, letterSpacing: 2),
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                  icon: Icon(
                    icon,
                    color: kLogoColor,
                  ),
                  //focusedBorder: ,
                  hintText: hintText,
                  hintStyle: const TextStyle(color: kSecondaryTextColor),
                  //border: InputBorder.none,
                  errorText:
                      (state.username.pure  && state.username.invalid)
                          ? 'invalid username'
                          : null,
                  errorStyle: const TextStyle(letterSpacing: 1)),
            ),
          );
        });
  }
}
