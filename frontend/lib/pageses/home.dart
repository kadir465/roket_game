import 'package:flutter/material.dart';
import 'package:trashtain_app/pageses/login.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(top: 120, left: 30),
                child: const Text(
                  "You haven't sent any feedback yet. ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 30),
                child: const Text(
                  "Your feedbacks will be listed here.",
                  style: TextStyle(
                    fontSize: 15,

                    color: Color.fromARGB(255, 149, 143, 143),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 39, 107, 223),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 10,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      //şimdilik login sayfasına yönlendiriyoruz
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Send a Feedback',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color.fromARGB(255, 176, 164, 164),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.feedback, color: Colors.blueAccent),
                label: 'Feedback',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard, color: Colors.green),
                label: 'Rewards',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.blueAccent),
                label: 'Profil',
              ),
            ],
            onTap: (index) {
              // Alt menü tıklama işlemleri
            },
          ),
        ],
      ),
    );
  }
}
