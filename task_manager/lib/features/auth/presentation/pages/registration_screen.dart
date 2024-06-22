import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/features/auth/presentation/pages/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  RegistrationScreenState createState() => RegistrationScreenState();
}

class RegistrationScreenState extends State<RegistrationScreen> {
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
                "Please register to continue",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 20),
              const Spacer(),
              CupertinoFormSection.insetGrouped(
                children: [
                  CupertinoFormRow(
                    prefix: const Text("First Name"),
                    child: CupertinoTextFormFieldRow(
                      placeholder: "Enter your full name",
                    ),
                  ),
                  CupertinoFormRow(
                    prefix: const Text("Last Name"),
                    child: CupertinoTextFormFieldRow(
                      placeholder: "Enter your full name",
                    ),
                  ),
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
                      obscureText: true,
                    ),
                  ),
                  CupertinoFormRow(
                    prefix: const Text("Confirm Password"),
                    child: CupertinoTextFormFieldRow(
                      placeholder: "Confirm your password",
                      obscureText: true,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CupertinoButton.filled(
                child: const Text("Register"),
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              CupertinoButton(
                child: const Text("Already have an account? Login"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
