import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:revisando_gerenciamento_de_estado/screens/main_screen.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return MainScreen();
          },
        ),
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/imagens_wellcome_screen/foto_model_01.jpeg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 100,
              child: Lottie.asset('assets/gifs/loading_01.json'),
            ),
          ),
        ],
      ),
    );
  }
}
