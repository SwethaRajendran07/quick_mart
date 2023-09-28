import 'package:flutter/material.dart';
import 'package:quick_mart/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Color customColor = Color(0xFF21D4B4);
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/q.png',
                      width: 40,
                      height: 40,
                    ),
                    Text(
                      "uickMart",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Text(
                  "Login",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Don\'t have an account?",
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        //AuthService().signInWithGoogle();
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: customColor,
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "*",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  cursorColor: Colors.grey,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    // labelText: 'Email Id',
                    labelStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: customColor, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "*",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  obscureText: _isObscured,
                  keyboardType: TextInputType.visiblePassword,
                  cursorColor: Colors.grey,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Enter your password.',
                    // labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: customColor, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),

                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isObscured = !_isObscured; // Toggle the visibility state
                        });
                      },
                      child: Image.asset(
                        'assets/Eye.png',
                        height: 2,
                        color: _isObscured ? customColor : Colors.grey,
                      ),
                      // child: Icon(
                      //   _isObscured ? Icons.visibility : Icons.visibility_off,
                      //   color: Colors.grey,
                      // ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: customColor,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // sign in button
                Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      print("logged in");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    minWidth: 500.0,
                    height: 55.0,
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("hiii");
                          //AuthService().signInWithGoogle();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Login with Google"),
                            Image.asset(
                              'assets/Google.png',
                              width: 20,
                              height: 20,
                              color: customColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("By login,you agree to our "),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                            color: customColor,
                          ),
                        ),
                        Text("and"),
                        Text(
                          "Terms & ",
                          style: TextStyle(
                            color: customColor,
                          ),
                        )
                      ],
                    ),
                    Center(
                      child: Text(
                        "Conditions.",
                        style: TextStyle(
                          color: customColor,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Image.asset(
                    'assets/HomeIndicator.png',
                    width: 200,
                    // height: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
