import 'package:flutter/material.dart';
import 'package:petpoint/widgets/custom_button.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastrar-se')),
      body: Center(
        child: Text('Tela de Cadastro'),
      ),
    );
  }
}
