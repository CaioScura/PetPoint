// lib/screens/cadastro_animal_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:petpoint/widgets/custom_button.dart';

class CadastroAnimalScreen extends StatelessWidget {
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
                        // Campo para adicionar uma foto
                        GestureDetector(
                          onTap: () {
                            // Ação para adicionar foto (pode usar ImagePicker)
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.grey[300],
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),

                        // Campo de Nome do animal
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Nome do Animal',
                            border: UnderlineInputBorder(), // Borda somente na parte inferior
                          ),
                        ),
                        SizedBox(height: 10),

                        // Campo de Descrição
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Descrição',
                            border: UnderlineInputBorder(), // Borda inferior
                          ),
                          maxLines: 3, // Permitir múltiplas linhas
                        ),
                        SizedBox(height: 10),

                        // Campo de Dados para Contato
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Dados para Contato',
                            border: UnderlineInputBorder(), // Borda inferior
                          ),
                        ),
                        SizedBox(height: 10),

                        // Mapa para a região
                        Container(
                          height: 200,
                          child: FlutterMap(
                            options: MapOptions(
                              center: LatLng(-23.5886, -48.0533), // Posição inicial
                              zoom: 13.0,
                            ),
                            children: [
                              TileLayer(
                                urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                                subdomains: ['a', 'b', 'c'],
                              ),
                              // Adicione outras camadas aqui, como markers, se necessário
                            ],
                          ),
                        ),
                        SizedBox(height: 20),

                        // Botões de ação
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 120, // Largura menor
                              child: CustomButton(
                                text: 'Cadastrar',
                                onPressed: () {
                                  print('Cadastrando animal');
                                },
                                backgroundColor: Color(0xFF8461c8), // Cor do botão roxo
                                fontSize: 14, // Tamanho de fonte menor
                              ),
                            ),
                            SizedBox(
                              width: 120, // Largura menor
                              child: CustomButton(
                                text: 'Cancelar',
                                onPressed: () {
                                  Navigator.pop(context); // Volta para a tela anterior
                                },
                                backgroundColor: Colors.grey, // Cor do botão cinza
                                fontSize: 14, // Tamanho de fonte menor
                              ),
                            ),
                          ],
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
                Navigator.pop(context); // Volta para a tela anterior
              },
            ),
          ),
        ],
      ),
    );
  }
}
