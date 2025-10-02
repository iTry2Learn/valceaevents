import 'package:flutter/material.dart';
import 'package:valceaapp/Components/my_button.dart';
import 'package:valceaapp/Components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
            const Text(
              'Creeaza-ți contul pentru a putea începe',
              style: TextStyle(fontSize: 16, color: Colors.black),
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
                  'Înregistrare',
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
            const SizedBox(height: 10), // Add some space
            MyTextfield(
              controller: confirmPasswordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),
            const SizedBox(height: 20), // Add some space
            // sign in button
            MyButton(text: 'Înregistrează-te!', onTap: () {}),
            const SizedBox(height: 25), // Add some space
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Ai deja un cont? ',
                  style: TextStyle(color: Colors.black),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Loghează-te aici!',
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
