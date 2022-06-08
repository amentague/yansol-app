import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yansol/src/features/login/login.dart';
import '../utils/constants.dart';
import 'text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  const RoundedPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextFieldContainer(
          child: TextField(
            obscureText: !isVisible,
            onChanged: (password) =>print(password),
            cursorColor: kPrimaryColor,
            style: const TextStyle(color: kSecondaryTextColor, fontSize: 30),
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: const TextStyle(color: kSecondaryTextColor),
              icon: const Icon(
                Icons.lock,
                color: kLogoColor,
              ),
              suffixIcon: IconButton(
                onPressed: _onPressed,
                icon: Icon(
                  isVisible ? Icons.visibility : Icons.visibility_off,
                  color: kLogoColor,
                  size: 30,
                ),
              ),
              //border: InputBorder.none,
              errorText: state.password.pure && state.password.invalid
                  ? 'invalid password'
                  : null,
            ),
          ),
        );
      },
    );
  }

  void _onPressed() {
    setState(() {
      isVisible = !isVisible;
    });
  }
}
