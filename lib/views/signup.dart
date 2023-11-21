import 'package:event_management_app/constants/colors.dart';
import 'package:event_management_app/widgets/custom_input_form.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
              "Sign Up",
              style: TextStyle(
                color: kLightGreen,
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 10),
            const CustomInputForm(
              icon: Icons.person_outline,
              label: "Name",
              hint: "Enter name",
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
                    "Sign Up",
                    style: TextStyle(color: kLightGreen),
                  )),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account? ",
                  style: TextStyle(
                      color: kLightGreen,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Login",
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
