// lib/screens/tela_cadastro.dart
import 'package:flutter/material.dart';

class TelaCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Animal'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nome do Animal'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Localização'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Descrição'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Informações para Contato'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Adicione o código para salvar os dados e navegar de volta
                Navigator.pop(context);
              },
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
