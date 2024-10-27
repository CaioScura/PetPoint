// lib/widgets/custom_button.dart
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double? fontSize; // Parâmetro opcional para o tamanho da fonte

  CustomButton({
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    this.fontSize, // Inicializa o parâmetro opcional
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize ?? 16, // Usa o tamanho especificado ou 16 por padrão
          color: Colors.white,
        ),
      ),
    );
  }
}
