import 'package:event_management_app/constants/colors.dart';
import 'package:event_management_app/widgets/custom_input_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            const Text(
              "Login",
              style: TextStyle(
                color: kLightGreen,
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 10),
            const CustomInputForm(
                icon: Icons.email_outlined,
                label: "Email",
                hint: "Ex: john@company.com"),
            const SizedBox(height: 10),
            const CustomInputForm(
              icon: Icons.lock_outline,
              label: "Password",
              hint: "Enter your password",
              obscureText: true,
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot Password",
                  style: TextStyle(
                      color: kLightGreen,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      foregroundColor: kLightGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: kLightGreen),
                  )),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Create a New Account? ",
                  style: TextStyle(
                      color: kLightGreen,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Sign up",
                  style: TextStyle(
                      color: kLightGreen,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
