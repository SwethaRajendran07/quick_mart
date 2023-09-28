import 'package:flutter/material.dart';
import 'package:quick_mart/HomePage.dart';
import 'package:quick_mart/customWidget/logo_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Color customColor = const Color(0xFF21D4B4);
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      logoWidget(),
                      const SizedBox(height: 40),
                      const Text(
                        "Login",
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const SizedBox(height: 10),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Don\'t have an account? ",
                          style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                color: customColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          text: 'Email  ',
                          style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: '*',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextField(
                        onChanged: (value) {},
                        cursorColor: Colors.grey,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          // labelText: 'Email Id',
                          labelStyle: const TextStyle(color: Colors.black),
                          contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: customColor, width: 2.0),
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),

                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          text: 'Password ',
                          style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: '*',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          //Do something with the user input.
                        },
                        obscureText: _isObscured,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: Colors.grey,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Enter your password.',
                          // labelText: 'Password',
                          labelStyle: const TextStyle(color: Colors.black),
                          contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: customColor, width: 2.0),
                            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isObscured = !_isObscured; // Toggle the visibility state
                              });
                            },
                            child: Image.asset(
                              'assets/Eye.png',
                              scale: 3.5,
                              color: _isObscured ? customColor : Colors.grey,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // forgot password?
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: customColor,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 25),

                      // sign in button
                      Material(
                        color: Colors.black,
                        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                        elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          },
                          minWidth: 500.0,
                          height: 55.0,
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Container(
                        height: 60,
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.black12)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text("Login with Google "),
                                const SizedBox(width: 2),
                                Image.asset(
                                  'assets/Google.png',
                                  width: 20,
                                  height: 20,
                                  color: customColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'By login, you agree to our  ',
                        style: const TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(text: 'Privacy Policy ', style: TextStyle(color: customColor)),
                          const TextSpan(text: 'and '),
                          TextSpan(text: "Terms & Conditions", style: TextStyle(color: customColor)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
