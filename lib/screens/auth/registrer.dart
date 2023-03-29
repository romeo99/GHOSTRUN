import 'package:flutter/material.dart';
import 'package:ghostrun/screens/home/home.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(children: [
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Rejoins la ',
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: "Ubuntu"),
                children: [
                  TextSpan(
                    text: 'GHOST',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Ubuntu"),
                  ),
                  TextSpan(
                    text: 'RUN',
                    style: TextStyle(
                        color: Color(0xFFCCED00),
                        fontSize: 20,
                        fontFamily: "Ubuntu"),
                  ),
                  TextSpan(
                    text: ' community!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Ubuntu"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Inscris toi pour rejoindre une communauté de personnes qui se dépaseent au quotidien.",
              style: TextStyle(fontFamily: "Ubuntu", color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
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
              style: TextStyle(fontSize: 30, color: Colors.white),
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
                  labelText: 'E-mail',
                ),
              ),
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
                  labelText: 'Prénom(s)',
                ),
              ),
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
                  labelText: 'Nom',
                ),
              ),
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
                  labelText: 'Date de naissance',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Theme(
              data: ThemeData(
                brightness: Brightness.dark,
              ),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Mot de passe',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Theme(
              data: ThemeData(
                brightness: Brightness.dark,
              ),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Confirmer le mot de passe',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  fillColor:
                      MaterialStateProperty.all<Color>(const Color(0xFFCCED00)),
                  checkColor: Colors.black,
                  overlayColor:
                      MaterialStateProperty.all<Color>(const Color(0xFFCCED00)),
                  value: isCheck,
                  onChanged: (bool? value) {
                    isCheck = !isCheck;
                  },
                ),
                RichText(
                  text: const TextSpan(
                    text: 'J\'accepte les ',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    children: [
                      TextSpan(
                        text: 'termes et conditions',
                        style: TextStyle(
                            color: Color(0xFFCCED00),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' et la\n ',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      TextSpan(
                        text: 'politique de confidentialité',
                        style: TextStyle(
                            color: Color(0xFFCCED00),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFCCED00)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text(
                "S'inscrire",
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
