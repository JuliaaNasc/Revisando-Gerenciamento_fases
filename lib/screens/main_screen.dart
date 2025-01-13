import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainScreen> {
  List<String> imagens = [
    'assets/imagens_do_app/foto_model_01.jpeg',
    'assets/imagens_do_app/foto_model_08.jpeg',
    'assets/imagens_do_app/foto_model_09.jpeg',
    'assets/imagens_do_app/foto_model_11.jpeg',
    'assets/imagens_do_app/foto_model_05.jpeg',
    'assets/imagens_do_app/foto_model_06.jpeg',
    'assets/imagens_do_app/foto_model_04.jpeg',
    'assets/imagens_do_app/foto_model_02.jpeg',
    'assets/imagens_do_app/foto_model_03.jpeg',
    'assets/imagens_do_app/foto_model_10.jpeg',
    'assets/imagens_do_app/foto_model_07.jpeg',
  ];

  int posicao_imagem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imagens[posicao_imagem],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 400,
            right: 10,
            child: IconButton(
              onPressed: () {
                if (posicao_imagem == imagens.length - 1) {
                  setState(
                    () {
                      posicao_imagem = 0;
                    },
                  );
                } else {
                  setState(
                    () {
                      posicao_imagem = posicao_imagem + 1;
                    },
                  );
                }
                ;
              },
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 50,
                color: Colors.black,
              ),
            ),
          ),

          Positioned(
            bottom: 400,
            left: 10,
            child: IconButton(
              onPressed: () {
                if (posicao_imagem == 0) {
                  setState(
                    () {
                      posicao_imagem = imagens.length - 1;
                    },
                  );
                } else {
                  setState(
                    () {
                      posicao_imagem = posicao_imagem - 1;
                    },
                  );
                }
                ;
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 50,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
