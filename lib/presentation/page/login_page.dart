import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:theatre/core/constants.dart';
import 'package:theatre/presentation/widgets/components/custom_bottom_screen.dart';
import 'package:theatre/presentation/widgets/components/custom_text_field.dart';
import 'package:theatre/presentation/widgets/components/screen_title.dart';
import 'package:theatre/presentation/widgets/components/sign_up_alert.dart';
import 'package:theatre/presentation/widgets/components/top_screen_image.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _saving = false;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {},
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: LoadingOverlay(
          isLoading: _saving,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const TopScreenImage(screenImageName: 'welcome.png'),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const ScreenTitle(title: 'Login'),
                        CustomTextField(
                          textField: TextField(
                              onChanged: (value) {
                                // _email = value;
                              },
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                              decoration: kTextInputDecoration.copyWith(
                                  hintText: 'Email')),
                        ),
                        CustomTextField(
                          textField: TextField(
                            obscureText: true,
                            onChanged: (value) {
                              // _password = value;
                            },
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                            decoration: kTextInputDecoration.copyWith(
                                hintText: 'Password'),
                          ),
                        ),
                        CustomBottomScreen(
                          textButton: 'Login',
                          heroTag: 'login_btn',
                          question: 'Forgot password?',
                          buttonPressed: () async {
                            context.router.pushNamed('/admin-home');
                            // FocusManager.instance.primaryFocus?.unfocus();
                            // setState(() {
                            //   _saving = true;
                            // });
                            // try {
                            //   // login
                            // } catch (e) {
                            //   signUpAlert(
                            //     context: context,
                            //     onPressed: () {
                            //       setState(() {
                            //         _saving = false;
                            //       });
                            //       // Navigator.popAndPushNamed(
                            //       //     context, LoginScreen.id);
                            //     },
                            //     title: 'WRONG PASSWORD OR EMAIL',
                            //     desc:
                            //         'Confirm your email and password and try again',
                            //     btnText: 'Try Now',
                            //   ).show();
                            // }
                          },
                          questionPressed: () {
                            signUpAlert(
                              onPressed: () async {
                                // await FirebaseAuth.instance
                                //     .sendPasswordResetEmail(email: _email);
                              },
                              title: 'RESET YOUR PASSWORD',
                              desc:
                                  'Click on the button to reset your password',
                              btnText: 'Reset Now',
                              context: context,
                            ).show();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
