import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/src/blocs/sing_up_bloc.dart';
import 'package:shop_ui/src/components/button_view.dart';
import 'package:shop_ui/src/components/circle_view.dart';
import 'package:shop_ui/src/components/edittext_view.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

import '../../utils/app_strings.dart';
import '../sing_in/sing_in_page.dart';

class SingUpPage extends StatefulWidget {
  static String routeName = "/sing_up";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _SingUpState();
  }

}

class _SingUpState extends State<SingUpPage> {
  SingUpBloc singUpBloc = SingUpBloc();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passTextController = TextEditingController();
  final TextEditingController _passConfirmTextController = TextEditingController();
  bool _showPass = true;
  bool _showPassConfirm = true;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    AppSizeConfig().initialSize(context);
    return SafeArea(
        child: SafeArea(
          child: Scaffold(
            // appBar: AppBar(
            //   centerTitle: true,
            //   title: const Text("SingIn"),
            //   leading: TextButton(
            //       onPressed: () {
            //         print('back stack');
            //         Navigator.of(context).pop();
            //       },
            //       child: Padding(
            //           padding: const EdgeInsets.all(10),
            //           child: Image.asset("assets/icons/ic_arrow_left.png"))),
            // ),
              appBar: AppBar(
                centerTitle: true,
                title: const Text("Sign Up"),

              ),
              body: SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(height: 10,),
                      Text(
                        "Sing Up",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(28),
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "Complete your details or continue \nwith social media",
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
                            singUpBloc.emailStream,
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
                            singUpBloc.passStream,
                            _passTextController,
                            _showPass,
                                (){showHidePass();}
                        ),
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
                            singUpBloc.passConfirmStream,
                            _passConfirmTextController,
                            _showPassConfirm,
                                (){showHidePassConfirm();}
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

                      ButtonView("SingUp", (){
                        onSignInClick();
                      }),
                      const SizedBox(height: 10,),
                      RichText(
                        text: TextSpan(

                            children: <TextSpan>[
                              TextSpan(
                                  text: "exist account? ",
                                  style:  TextStyle(
                                    color: Colors.black,
                                    // fontSize: 20,
                                    fontSize: getProportionateScreenWidth(17),
                                  )
                              ),
                              TextSpan(
                                text: "SingIn now",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: getProportionateScreenWidth(20),
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = _goToSingIn,
                              ),
                            ]
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        "By continuing your confirm that you agree \nwith our Term and Condition",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black12,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              )
          ),
        )
    );
  }

  void showHidePass() {
    setState(() {
      _showPass = !_showPass;
    });
  }
  void showHidePassConfirm() {
    setState(() {
      _showPassConfirm = !_showPassConfirm;
    });
  }

  void onSignInClick() {
    print('step 1: click singin btn');
    // if (singInBloc.isValidUser(_emailTextController.text, _passTextController.text)) {
    //   print('step 2: check valid');
    //   Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    // }
    print('step 3: finish');

  }

  void _goToSingIn() {
    print('step 1: click sing in btn');
    Navigator.push(context, MaterialPageRoute(builder: (context) => SingInPage()));
    // Navigator.of(context).pop();
  }

}