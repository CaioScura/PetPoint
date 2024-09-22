import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Conteúdo principal da tela
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0), // Ajuste do espaçamento
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Ícone de pata no topo
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0xFF43d7a1), // Cor de fundo verde
                    child: Icon(
                      Icons.pets,
                      color: Color(0xFF8461c8), // Cor roxa
                      size: 50,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Texto de título
                  Text(
                    'Redefinir senha',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),

                  // Texto de instrução
                  Text(
                    'Enviaremos um e-mail com mais informações para sua nova senha.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 30),

                  // Campo de e-mail de acesso
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Seu email de acesso',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Botão de confirmação
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Ação ao confirmar
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF8461c8), // Cor do botão roxo
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: Text(
                        'Confirmar',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Botão de voltar no topo esquerdo
          Positioned(
            top: 20, // Margem superior para o botão voltar
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context); // Volta para a tela anterior
              },
            ),
          ),
        ],
      ),
    );
  }
}
