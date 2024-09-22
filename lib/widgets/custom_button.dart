import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor; // Novo parâmetro

  CustomButton({
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.blue, // Cor padrão para o botão
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor, // Aplicando a cor de fundo ao botão (usando backgroundColor agora)
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.white), // Texto branco por padrão
      ),
    );
  }
}
