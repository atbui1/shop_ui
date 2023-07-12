import 'dart:async';

import 'package:shop_ui/src/utils/app_strings.dart';

import '../validators/Validation.dart';

class SingInBloc {
  final StreamController _emailController = StreamController();
  final StreamController _passController = StreamController();

  Stream get emailStream => _emailController.stream;
  Stream get passStream => _passController.stream;

  bool isValidUser(String email, String pass) {
    if(!Validation.isValidUser(email)) {
      _emailController.sink.addError(AppString.emailErr);
      return false;
    }
    _emailController.sink.add("ok");
    if(!Validation.isValidPass(pass)) {
      _passController.sink.addError(AppString.passErr);
      return false;
    }

    _passController.sink.add("ok");
    return true;
  }

  void dispose() {
    _emailController.close();
    _passController.close();
  }
}