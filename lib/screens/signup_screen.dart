import 'package:flutter/material.dart';
import 'package:petpoint/widgets/custom_button.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF43d7a1), // Cor de fundo verde
      body: Stack(
        children: [
          // Conteúdo principal da tela
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50), // Espaço para o botão Voltar

                  // Logo no topo
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.pets, // Ícone de pata
                        color: Color(0xFF8461c8), // Cor roxa
                        size: 50,
                      ),
                    ),
                  ),

                  // Card de cadastro
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 24), // Margem para centralizar
                    decoration: BoxDecoration(
                      color: Colors.white, // Cor de fundo do card
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // Campo de Nome completo
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Nome completo',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),

                        // Campo de Email
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),

                        // Campo de Telefone
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Telefone',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),

                        // Campo de Endereço
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Endereço',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),

                        // Campo de Data de Nascimento
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Data de Nascimento',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),

                        // Campo de Senha
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            border: OutlineInputBorder(),
                          ),
                          obscureText: true, // Ocultar senha
                        ),
                        SizedBox(height: 20),

                        // Botão de Cadastrar
                        CustomButton(
                          text: 'Cadastrar',
                          onPressed: () {
                            print('Cadastrando usuário');
                          },
                          backgroundColor: Color(0xFF8461c8), // Cor do botão roxo
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Botão Voltar no topo
          Positioned(
            top: 10, // Posição no topo da tela
            left: 10, // Margem da esquerda
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context); // Volta para a tela anterior (Login)
              },
            ),
          ),
        ],
      ),
    );
  }
}
