import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/src/blocs/sing_in_bloc.dart';
import 'package:shop_ui/src/components/button_view.dart';
import 'package:shop_ui/src/components/circle_view.dart';
import 'package:shop_ui/src/components/edittext_view.dart';
import 'package:shop_ui/src/screens/home/home_page.dart';
import 'package:shop_ui/src/screens/sing_up/sing_up_page.dart';
import 'package:shop_ui/src/utils/app_constants.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

import '../../utils/app_strings.dart';

class SingInPage extends StatefulWidget {
  static String routeName = "/sing_in";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _SingInState();
  }

}

class _SingInState extends State<SingInPage> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//
// }
//
// class SingInPage extends StatelessWidget {

  SingInBloc singInBloc = SingInBloc();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passTextController = TextEditingController();
  bool _showPass = true;


  @override
  Widget build(BuildContext context) {
    AppSizeConfig().initialSize(context);
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            // centerTitle: true,
            title: const Text("Sign In"),

          ),
          body: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(height: 10,),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(28),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      "Sign in with your email and password  \nor continue with social media",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20),
                        vertical: 10,
                      ),
                      child: EdittextView.stream(
                          "Username",
                          "Enter username",
                          "assets/icons/ic_email.svg",
                          "",
                          singInBloc.emailStream,
                          _emailTextController),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20),
                        vertical: 10,
                      ),
                      child: EdittextView.passForm(
                          "Password",
                          "Enter password",
                          "assets/icons/ic_lock.svg",
                          "assets/icons/ic_eye_hide.png",
                          "assets/icons/ic_eye_show.png",
                          singInBloc.passStream,
                          _passTextController,
                          _showPass,
                          (){showHidePass();}
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleView("assets/icons/ic_google.svg", (){print("opent google");}),
                        CircleView("assets/icons/ic_twitter.svg", (){print("open twitter");}),
                        CircleView("assets/icons/ic_facebook.svg", (){print("opent facebook");}),
                      ],
                    ),
                    /** btn singIn*/
                    ButtonView("Login", (){
                      onSignInClick();
                    }),
                    const SizedBox(
                      height: 30,
                    ),
                    RichText(
                      text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: "No account?",
                                style:  TextStyle(
                                  color: tSecondaryColor,
                                  // fontSize: 20,
                                  fontSize: getProportionateScreenWidth(15),
                                )
                            ),

                            TextSpan(
                                text: "  Register now",
                                style: TextStyle(
                                  color: tPrimaryColor,
                                  fontSize: getProportionateScreenWidth(18),
                                  fontWeight: FontWeight.w500
                                ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = _goToSingUp,
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
          ),
    )
    );
  }

  void showHidePass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void onSignInClick() {
    print('step 1: click singin btn');
    // if (singInBloc.isValidUser(_emailTextController.text, _passTextController.text)) {
      print('step 2: check valid');
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    // }
    print('step 3: finish');
  }

  void _goToSingUp() {
    print('step 1: click singup btn');
    Navigator.push(context, MaterialPageRoute(builder: (context) => SingUpPage()));
  }

}