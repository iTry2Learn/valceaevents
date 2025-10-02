import 'package:flutter/material.dart';
import 'package:valceaapp/Components/my_button.dart';
import 'package:valceaapp/Components/my_textfield.dart';
import 'package:valceaapp/Pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // sign user in method
  void login() {
    /* 

    aici punem metoda de login cu firebase

    
    */
    // navigam catre home page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        196,
        200,
        200,
      ), // Blue background color
      body: Center(
        child: Column(
          // i need the name to be centered, but at the top of the screen
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50), // Add some space at the top
            // name of the app: Smart Invitation
            const Text(
              'Bine ai venit!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            // logo
            const SizedBox(height: 50), // Add some space
            //moto
            const Center(
              child: const Text(
                'Autentifică-te pentru a descoperi invitația perfectă',
                style: TextStyle(fontSize: 16, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 50), // Add some space
            //  login icon + autentificare text
            Column(
              children: [
                const Icon(
                  Icons.lock_open_rounded,
                  size: 50,
                  color: Colors.black,
                ),
                const Text(
                  'Autentificare',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),

            const SizedBox(height: 20), // Add some space
            // email textfield
            MyTextfield(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            // password textfield
            const SizedBox(height: 10), // Add some space
            MyTextfield(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 20), // Add some space
            // sign in button
            MyButton(text: 'Sign In', onTap: login),
            const SizedBox(height: 25), // Add some space
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Nu ai un cont? ', style: TextStyle(color: Colors.black)),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Înregistrează-te aici!',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
