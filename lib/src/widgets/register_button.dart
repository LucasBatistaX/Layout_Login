import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("Registrando...")));
          await Future.delayed(Duration(seconds: 1));
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("Registrado com sucesso!")));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(8),
          ),
        ),
        child: Text(label, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
