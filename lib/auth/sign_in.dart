import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:service/screen/home_screen.dart';

class SignIn extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<SignIn> {
  Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: [
          'email',
        ],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        // User canceled the sign-in
        return null;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      final User? user = userCredential.user;

      if (user != null) {
        print("Signed in: ${user.displayName}");
      }

      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('assets/background.png')),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Column(
              children: [
                Text('Sign in to Continue'),
                Text(
                  'Helpers',
                  style: TextStyle(fontSize: 50, color: Colors.white, shadows: [
                    BoxShadow(
                        blurRadius: 5,
                        color: Colors.green.shade900,
                        offset: Offset(3, 3))
                  ]),
                ),
                Column(
                  children: [
                    SignInButton(
                      Buttons.Apple,
                      text: "Sign in with Google",
                      onPressed: () {},
                    ),
                    SignInButton(
                      Buttons.Google,
                      text: "Sign in with Apple",
                      onPressed: () {
                        _googleSignUp().then(
                          (value) => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Text(
                  'You are sign in to agreeing our',
                  style: TextStyle(color: Colors.grey[400]),
                ),
                Text(
                  'Term and Privacy',
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

_googleSignUp() {}
