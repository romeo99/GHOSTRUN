import 'package:flutter/material.dart';

class HomeContentScreen extends StatefulWidget {
  const HomeContentScreen({super.key});

  @override
  State<HomeContentScreen> createState() => _HomeContentScreenState();
}

class _HomeContentScreenState extends State<HomeContentScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(115, 91, 86, 86),
        centerTitle: true,
        title: const Text(
          "Affronter",
          style: TextStyle(
              fontSize: 40, fontFamily: "Ubuntu", color: Colors.white),
        ),
        bottom: TabBar(
          controller: tabController,
          labelColor: Colors.white,
          indicatorColor: const Color(0xFFCCED00),
          // indicator: const BoxDecoration(
          //   color: Colors.white,
          // ),
          tabs: const [
            Tab(text: "Moi-même"),
            Tab(text: "Un ami"),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Expanded(
          flex: 1,
          child: TabBarView(
            controller: tabController,
            children: [
              Container(
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset('assets/images/logo.png'),
                  const SizedBox(
                    height: 20,
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
                      "Run",
                      style: TextStyle(color: Colors.black54, fontSize: 20),
                    ),
                  ),
                ]),
              ),
              const Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }
}
