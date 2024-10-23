// lib/screens/cadastro_animal_screen.dart
import 'package:flutter/material.dart';

class CadastroAnimalScreen extends StatelessWidget {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController localizacaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF43d7a1),
        title: Text('Cadastrar Animal'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nomeController,
              decoration: InputDecoration(
                labelText: 'Nome do Animal',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: localizacaoController,
              decoration: InputDecoration(
                labelText: 'Localização',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para salvar o animal
                Navigator.pop(context); // Retorna para a tela anterior após salvar
              },
              child: Text('Salvar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF43d7a1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

