import "package:flutter/material.dart";

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Card(
                  shadowColor: Colors.white30,
                  elevation: 20,
                  color: Colors.white30,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 5, right: 10, top: 10),
                              child: const CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/runner.jpg"),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Louis Finet",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "VS Enzo.D",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                            margin: const EdgeInsets.only(
                                top: 20, left: 20, right: 20),
                            child: const Text(
                              "+ 26m",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold),
                            )),
                        const Divider(thickness: 3),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Montée de la Bastille",
                          style:
                              TextStyle(color: Color(0xFFCCED00), fontSize: 25),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "3,8 km",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              "00:18:19",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              "11,9 km/h",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white30),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Connexion",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ])),
                ),
              );
            }));
  }
}
