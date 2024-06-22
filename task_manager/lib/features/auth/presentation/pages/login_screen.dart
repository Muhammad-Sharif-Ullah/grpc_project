import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/features/auth/presentation/pages/registration_screen.dart';
import 'package:task_manager/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.paddingOf(context).top),
            Hero(
              tag: "logo",
              child: Icon(
                CupertinoIcons.waveform,
                size: 150,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Text("Welcome to the iMpulse",
                style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 10),
            Text(
              "Please login to continue",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(height: 20),
            const Spacer(),
            CupertinoFormSection.insetGrouped(
              children: [
                CupertinoFormRow(
                  prefix: const Text("Email"),
                  child: CupertinoTextFormFieldRow(
                    placeholder: "Enter your email",
                  ),
                ),
                CupertinoFormRow(
                  prefix: const Text("Password"),
                  child: CupertinoTextFormFieldRow(
                    placeholder: "Enter your password",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // forgot password
            Align(
              alignment: Alignment.centerRight,
              child: CupertinoButton(
                child: const Text("Forgot Password?"),
                onPressed: () {},
              ),
            ),
            const Spacer(),
            CupertinoButton.filled(
              child: const Text("Login"),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MyHomePage(title: 'Flutter Demo Home Page');
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            CupertinoButton(
              child: const Text("Don't have an account? Register"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const RegistrationScreen();
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    ));
  }
}
