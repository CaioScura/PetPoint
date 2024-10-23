// lib/main.dart
import 'package:flutter/material.dart';
import 'package:petpoint/screens/login_screen.dart';
import 'package:petpoint/screens/signup_screen.dart';
import 'package:petpoint/screens/forgot_password_screen.dart';
import 'package:petpoint/screens/tela_inicial.dart';
import 'package:petpoint/utils/constants.dart';
import 'package:petpoint/screens/cadastro_animal_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/home': (context) => TelaInicial(),
        '/cadastro-animal': (context) => CadastroAnimalScreen(),
      },
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:petpoint/screens/login_screen.dart';
// import 'package:petpoint/screens/signup_screen.dart';
// import 'package:petpoint/screens/forgot_password_screen.dart';
// import 'package:petpoint/utils/constants.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter App',
//       theme: ThemeData(
//         primaryColor: primaryColor,
//         // accentColor: accentColor,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => LoginScreen(),
//         '/signup': (context) => SignupScreen(),
//         '/forgot-password': (context) => ForgotPasswordScreen(),
//       },
//     );
//   }
// }
