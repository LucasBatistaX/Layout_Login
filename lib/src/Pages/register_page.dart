import 'package:flutter/material.dart';
import 'package:layout/src/widgets/avatar_profile.dart';
import 'package:layout/src/widgets/generic_input.dart';
import 'package:layout/src/widgets/password_form.dart';
import 'package:layout/src/widgets/register_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/home");
          },
          icon: Icon(Icons.arrow_back_ios, size: 24),
        ),
        title: Center(
          child: Text(
            "Register",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
          child: Column(
            children: [
              SizedBox(height: 70),
              AvatarProfile(),
              SizedBox(height: 50),
              GenericInput(label: "Staff ID"),
              SizedBox(height: 30),
              GenericInput(label: "UserName"),
              SizedBox(height: 30),
              PasswordForm(label: 'Password'),
              SizedBox(height: 30),
              PasswordForm(label: 'Confirm Password'),
              SizedBox(height: 30),
              RegisterButton(label: "Register"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Don't have any account ? "),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/login");
                      },
                      child: Text(
                        "Back Login",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
