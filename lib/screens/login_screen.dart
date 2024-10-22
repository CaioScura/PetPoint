// lib/screens/login_screen.dart
import 'package:flutter/material.dart';
import 'package:petpoint/widgets/custom_button.dart'; // Botão customizado

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF43d7a1), // Fundo verde especificado
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32.0), // Ajuste de padding lateral
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, // Centralizar os itens
            children: [
              // Placeholder para a logo
              CircleAvatar(
                radius: 50, // Tamanho do círculo de acordo com a imagem
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 80, color: Color(0xFF43d7a1)), // Ícone temporário para logo
              ),
              SizedBox(height: 40), // Espaço entre a logo e os campos de entrada

              // Campo de texto para email
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20),

              // Campo de texto para senha
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),

              // Botão de "Entrar"
              CustomButton(
                text: 'Entrar',
                onPressed: () {
                  // Navegar para a TelaInicial
                  Navigator.pushNamed(context, '/home');
                },
                // Customizando a cor de fundo do botão para roxo
                backgroundColor: Color(0xFF8461c8),
              ),
              SizedBox(height: 20),

              // Row para "Esqueci minha senha" e "Não tem conta? Cadastrar-se" na mesma linha
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Link para "Esqueci minha senha"
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgot-password');
                    },
                    child: Text(
                      'Esqueci minha senha',
                      style: TextStyle(color: Colors.white), // Cor do texto branco
                    ),
                  ),

                  // Botão para "Cadastrar"
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text(
                      'Não tem conta? Cadastre-se',
                      style: TextStyle(
                        color: Color(0xFF8461c8), // Cor do texto roxo especificado
                        fontWeight: FontWeight.bold,
                      ), // Negrito
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:petpoint/widgets/custom_button.dart'; // Botão customizado
//
// class LoginScreen extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF43d7a1), // Fundo verde especificado
//       body: Center(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 32.0), // Ajuste de padding lateral
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center, // Centralizar os itens
//             children: [
//               // Placeholder para a logo
//               CircleAvatar(
//                 radius: 50, // Tamanho do círculo de acordo com a imagem
//                 backgroundColor: Colors.white,
//                 child: Icon(Icons.person, size: 80, color: Color(0xFF43d7a1)), // Ícone temporário para logo
//               ),
//               SizedBox(height: 40), // Espaço entre a logo e os campos de entrada
//
//               // Campo de texto para email
//               TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                   prefixIcon: Icon(Icons.email),
//                 ),
//               ),
//               SizedBox(height: 20),
//
//               // Campo de texto para senha
//               TextField(
//                 controller: passwordController,
//                 decoration: InputDecoration(
//                   labelText: 'Senha',
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                   prefixIcon: Icon(Icons.lock),
//                 ),
//                 obscureText: true,
//               ),
//               SizedBox(height: 20),
//
//               // Botão de "Entrar"
//               CustomButton(
//                 text: 'Entrar',
//                 onPressed: () {
//                   // Chame a função de autenticação aqui
//                   print('Entrando com email: ${emailController.text}');
//                 },
//                 // Customizando a cor de fundo do botão para roxo
//                 backgroundColor: Color(0xFF8461c8),
//               ),
//               SizedBox(height: 20),
//
//               // Row para "Esqueci minha senha" e "Não tem conta? Cadastrar-se" na mesma linha
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   // Link para "Esqueci minha senha"
//                   TextButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, '/forgot-password');
//                     },
//                     child: Text(
//                       'Esqueci minha senha',
//                       style: TextStyle(color: Colors.white), // Cor do texto branco
//                     ),
//                   ),
//
//                   // Botão para "Cadastrar"
//                   TextButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, '/signup');
//                     },
//                     child: Text(
//                       'Não tem conta? Cadastre-se',
//                       style: TextStyle(color: Color(0xFF8461c8),// Cor do texto roxo especificado
//                         fontWeight: FontWeight.bold,), //negrito
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
