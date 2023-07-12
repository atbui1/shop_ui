import 'dart:async';

import 'package:shop_ui/src/utils/app_strings.dart';

import '../validators/Validation.dart';

class SingUpBloc {
  final StreamController _emailController = StreamController();
  final StreamController _passController = StreamController();
  final StreamController _passConfirmController = StreamController();

  Stream get emailStream => _emailController.stream;
  Stream get passStream => _passController.stream;
  Stream get passConfirmStream => _passConfirmController.stream;

  bool isValidUser(String email, String pass, String passConfirm) {
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

    if(!Validation.isValidPassConfirm(pass, passConfirm)) {
      _passConfirmController.sink.addError(AppString.passConfirmErr);
      return false;
    }
    _passConfirmController.sink.add("ok");

    return true;
  }

  void dispose() {
    _emailController.close();
    _passController.close();
    _passConfirmController.close();
  }
}