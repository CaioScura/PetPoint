import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Definindo a cor de fundo verde
      backgroundColor: Color(0xFF43d7a1),
      body: Stack(
        children: [
          // Conteúdo central
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Card que envolve o texto, input e botão
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 4, // Sombra do card
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Título
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
                          SizedBox(height: 20),

                          // Input de e-mail
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Seu email de acesso',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 20),

                          // Botão de confirmar
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
                                style:
                                  TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                  ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Botão de voltar
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
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
