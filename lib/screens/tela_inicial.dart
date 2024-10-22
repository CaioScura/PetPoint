// lib/screens/tela_inicial.dart
import 'package:flutter/material.dart';
import 'package:petpoint/screens/tela_cadastro.dart'; // Para navegar para a TelaCadastro

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Point'),
      ),
      body: ListView(
        children: [
          // Aqui você pode implementar a lista dos animais cadastrados
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/dog1.jpg'), // Exemplo de imagem
            ),
            title: Text('Thor'),
            subtitle: Text('Central Park, avenida'),
          ),
          // Adicione outros ListTiles para outros animais...
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cadastrar-animal');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
