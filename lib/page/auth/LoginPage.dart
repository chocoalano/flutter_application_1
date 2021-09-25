import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/dashboard/HomePage.dart';
import 'package:flutter_login/flutter_login.dart';

const users = const {
  '@.com': '.',
  'hunter@gmail.com': 'hunter',
};

class LoginPage extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      logo: 'assets/Data Arranging_Monochromatic.png',
      onLogin: _authUser,
      onSignup: _authUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => MyHomePage(
            title: 'HomePages',
          ),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
