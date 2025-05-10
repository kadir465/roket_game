import 'package:flutter/material.dart';
import 'package:trashtain_app/pageses/home.dart';
import 'package:trashtain_app/pageses/signİn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
bool _obscureText = true;
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            // Klavye taşmasını engeller
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60),

                // --- Logo ekleme ---
                const SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 22),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        ' Welcome to',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/trashtain_logo.png',
                      height: 170,
                      width: 170,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),

                // Email input
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.47)),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 12, 75, 128),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Color.fromARGB(255, 16, 89, 150),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 24),

                // Password input
                TextField(
                obscureText: _obscureText,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 12, 75, 128),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 32),

                // Login button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      // Giriş işlemleri burada yapılacak
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Not a member?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        // Giriş işlemleri burada yapılacak
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignInPage()),
                        );
                      },
                      child: Text(
                        "Register Now",
                        style: TextStyle(
                          color: Color.fromARGB(255, 12, 75, 128),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
