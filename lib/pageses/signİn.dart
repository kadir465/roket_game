import 'package:flutter/material.dart';
import 'package:trashtain_app/pageses/login.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _obscureText = true;
  bool _ischecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Crreate an account to start sending feedback",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                // Name
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Name",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'John Doe',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Email
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email Address",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'johndoe@gmail.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),

                // Password
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    hintText: "Create a Password",
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
                const SizedBox(height: 16),
                const SizedBox(height: 8),
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
                const SizedBox(height: 24),
                CheckboxListTile(
                  value: _ischecked,
                  onChanged: (bool? newVaule) {
                    setState(() {
                      _ischecked = newVaule!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text.rich(
                    TextSpan(
                      text: "I've read and agree with the ",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Terms and Conditions ",
                          style: TextStyle(
                            color: Color.fromARGB(255, 60, 156, 234),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: "and the",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " Privacy Policy",
                          style: TextStyle(
                            color: Color.fromARGB(255, 60, 156, 234),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Register Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 3, 111, 199),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(// girilen bilgiler doğru olursa login sayfasına yönlendiriyoruz
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                    // Register işlemleri
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
