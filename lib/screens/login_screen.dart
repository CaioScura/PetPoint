import 'package:flutter/material.dart';
import 'package:petpoint/widgets/custom_button.dart'; // Botão customizado
import 'package:petpoint/utils/constants.dart'; // Cores e strings

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo do aplicativo
            Image.asset('assets/images/logo.png', height: 150),

            SizedBox(height: 40),

            // Campo de texto para email
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20),

            // Campo de texto para senha
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),

            // Botão de "Entrar"
            CustomButton(
              text: 'Entrar',
              onPressed: () {
                // Chame a função de autenticação aqui
                print('Entrando com email: ${emailController.text}');
              },
            ),
            SizedBox(height: 20),

            // Link para "Esqueci minha senha"
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/forgot-password');
              },
              child: Text('Esqueci minha senha'),
            ),

            // Botão para "Cadastrar"
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('Não tem conta? Cadastrar-se'),
            ),
          ],
        ),
      ),
    );
  }
}
