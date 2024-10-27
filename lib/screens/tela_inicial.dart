// lib/screens/tela_inicial.dart
import 'package:flutter/material.dart';
import 'package:petpoint/screens/editar_animal_screen.dart';

class TelaInicial extends StatelessWidget {
  final List<Map<String, String>> animais = [
    {'nome': 'Thor', 'localizacao': 'Central Park, avenida'},
    {'nome': 'Simba', 'localizacao': 'Central Park, avenida'},
    {'nome': 'Toddy', 'localizacao': 'Central Park, avenida'},
    {'nome': 'Scooby', 'localizacao': 'Central Park, avenida'},
    {'nome': 'Neve', 'localizacao': 'Central Park, avenida'},
    {'nome': 'Conan', 'localizacao': 'Central Park, avenida'},
    {'nome': 'Alf', 'localizacao': 'Central Park, avenida'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Fundo cinza claro
      body: Column(
        children: [
          // Cabeçalho verde
          Container(
            color: Color(0xFF43d7a1), // Cor verde do cabeçalho
            padding: EdgeInsets.all(24.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pet Point',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.pets, color: Colors.white, size: 24.0),
                    SizedBox(width: 8.0),
                    Text(
                      'Seu ponto de encontro para pets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Lista de animais
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.all(16.0),
              itemCount: animais.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/pet_placeholder.png'),
                      radius: 30.0,
                    ),
                    title: Text(
                      animais[index]['nome']!,
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(animais[index]['localizacao']!),
                    trailing: Icon(Icons.pets, color: Color(0xFF43d7a1)),
                    onTap: () {
                      // Navegar para a tela de edição do animal
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditarAnimalScreen(animal: animais[index]),
                        ),
                      );
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.grey[300],
                  thickness: 1,
                  height: 20,
                ); // Linha separadora entre os cards
              },
            ),
          ),
        ],
      ),
      // Botão para adicionar novo animal
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cadastro-animal'); // Redireciona para a tela de cadastro
        },
        backgroundColor: Color(0xFF43d7a1), // Cor verde
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
