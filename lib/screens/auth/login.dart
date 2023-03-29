import 'package:flutter/material.dart';
import 'package:ghostrun/screens/auth/registrer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Prêt à te surpasser ?\nConnecte toi!',
                  style: TextStyle(
                      fontSize: 25, fontFamily: "Ubuntu", color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset("assets/images/google.png"),
                      const SizedBox(
                        width: 18,
                      ),
                      const Text(
                        'Connexion avec Google',
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "OU",
                  style: TextStyle(
                      fontSize: 30, fontFamily: "Ubuntu", color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'E-mail',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Mot de passe',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text("Mot de passe oublié?",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 17,
                        fontFamily: "Ubuntu",
                        color: Colors.white)),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFCCED00)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: const Text(
                        "S'inscrire",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFCCED00)),
                      ),
                      onPressed: () {
                        // Navigator.pushNamed(context, '/home');
                      },
                      child: const Text(
                        "Connexion",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
